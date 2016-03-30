class Micropost < ActiveRecord::Base
  belongs_to :user
  attr_accessible :content

  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  default_scope -> { order(created_at: :desc) }
  scope :from_users_followed_by, ->(user) { followed_by(user) }

  private

  # Renvoie une condition SQL pour les utilisateurs suivis par l'utilisateur donné.
  # Nous incluons aussi ses propres micro-messages.
  def self.followed_by(user)
    followed_ids = %(SELECT followed_id FROM relationships
                       WHERE follower_id = :user_id)
    where("user_id IN (#{followed_ids}) OR user_id = :user_id",
          user_id: user)
  end
end
