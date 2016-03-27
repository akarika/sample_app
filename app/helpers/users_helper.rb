module UsersHelper
  def gravatar_for(user, options = { size: 50 })
    gravatar_image_tag(user.email.downcase, alt: user.nom,
                                            class: 'gravatar', gravatar: options)
  end

  def link_gravatar
    link_to'Changer', 'http://gravatar.com/emails', target: '_blank'
  end
end
