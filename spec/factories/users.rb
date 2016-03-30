
FactoryGirl.define do
  sequence (:email) { |n| "person-#{n}@example.com" }

  factory :user do
    nom 'Michael Hartl'
    email                 { FactoryGirl.generate(:email) }
    password              'foobar'
    password_confirmation 'foobar'
  end
end
