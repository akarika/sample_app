require 'rails_helper'

RSpec.describe User, type: :model do
before(:each)do
@attr={nom:"Example user",email:"user@example.com"}
end
it"devrait créer une nouvelle instance dotée des attributs valides"do
User.create!(@attr)
end
it "devrait exiger un nom"do
bad_guy =User.new(@attr.merge(nom:" "))
expect(bad_guy).not_to be_valid
end
it "devrait exiger un mail"do
no_email=User.new(@attr.merge(email:" "))
expect(no_email).not_to be_valid
end
it"doit rejeter les mots long(50 carac)"do
long_nom="a"*51
long_nom_user=User.new(@attr.merge(nom:long_nom))
expect(long_nom_user).not_to be_valid
end
it"devrait accespter une adresse mail valdie"do
adresses=%w[user@foo.com THE_USER@foo.bar first@ds.jp]
adresses.each do |a|
  invalid_email_user =User.new(@attr.merge(email:a))
  expect(invalid_email_user).to be_valid

end
end
it"devrait accespter une adresse mail valdie"do
adresses=%w[user@foo'com THE_USER@foo:bar firstds.jp]
adresses.each do |a|
  invalid_email_user =User.new(@attr.merge(email:a))
  expect(invalid_email_user).not_to be_valid
end
end
it "devrait rejeter un email en double"do
  upcased_email=@attr[email:].upcase
  User.create!(@attr.merge(email: upcased_email))
  user_with_duplicate_email = User.new(@attr)
    expect(user_with_duplicate_email).not_to be_valid
end


end
