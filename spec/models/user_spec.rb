#  require 'rails_helper'
# #
# # RSpec.describe User, type: :model do
# #   before(:each) do
# #     @attr = {
# #       nom: 'Utilisateur exemple',
# #       email: 'user@example.com',
# #       password: 'foobar',
# #       password_confirmation: 'foobar'
# #     }
# #   end
# #   it"devrait créer une nouvelle instance dotée des attributs valides" do
# #     User.create!(@attr)
# #   end
# #   it 'devrait exiger un nom' do
# #     bad_guy = User.new(@attr.merge(nom: ' '))
# #     expect(bad_guy).not_to be_valid
# #   end
# #   it 'devrait exiger un mail' do
# #     no_email = User.new(@attr.merge(email: ' '))
# #     expect(no_email).not_to be_valid
# #   end
# #   it'doit rejeter les mots long(50 carac)' do
# #     long_nom = 'a' * 51
# #     long_nom_user = User.new(@attr.merge(nom: long_nom))
# #     expect(long_nom_user).not_to be_valid
# #   end
# #   it'devrait accespter une adresse mail valdie' do
# #     adresses = %w(user@foo.com THE_USER@foo.bar first@ds.jp)
# #     adresses.each do |a|
# #       invalid_email_user = User.new(@attr.merge(email: a))
# #       expect(invalid_email_user).to be_valid
# #     end
# #   end
# #   it'devrait accepter une adresse mail valide' do
# #     adresses = %w(user@foo'com THE_USER@foo:bar firstds.jp)
# #     adresses.each do |a|
# #       invalid_email_user = User.new(@attr.merge(email: a))
# #       expect(invalid_email_user).not_to be_valid
# #     end
# #   end
# #   it 'devrait rejeter un email en double' do
# #     upcased_email = @attr[:email].upcase
# #     User.create!(@attr.merge(email: upcased_email))
# #     user_with_duplicate_email = User.new(@attr)
# #     expect(user_with_duplicate_email).not_to be_valid
# #   end
# #   describe 'password validations' do
# #     it'devrait exiger un mdp' do
# #       expect(User.new(@attr.merge(password: '', password_confirmation: ''))).not_to be_valid
# #     end
# #     it'devrait exiger une confirmation de mdp' do
# #       expect(User.new(@attr.merge(password_confirmation: 'invalid'))).not_to be_valid
# #     end
# #     it'devrait rejeter les mdp trop courts' do
# #       short = 'a' * 5
# #       hash = @attr.merge(password: short, password_confirmation: short)
# #       expect(User.new(hash)).not_to be_valid
# #     end
# #     it'devrait rejeter les mdp trop long' do
# #       long = 'a' * 41
# #       hash = @attr.merge(password: long, password_confirmation: long)
# #       expect(User.new(hash)).not_to be_valid
# #     end
# #   end
# #   describe 'Cryptage du mdp' do
# #     before(:each) do
# #       @user = User.create!(@attr)
# #     end
# #     it"devrait avoir un attribut de mdp crypté" do
# #       @user.should respond_to(:encrypted_password)
# #     end
# #     it"devrait définir le mdp crypté" do
# #       @user.encrypted_password.should_not be_blank
# #     end
# #     describe"Méthode has_password?" do
# #       it'doit retourner true si les mdp coincident' do
# #         expect(@user.has_password?(@attr[:password])).to be_truthy
# #       end
# #       # it'doit retouner false si mdp divergent' do
# #       #   expect(@user.has_password?(@attr[:password])).to be_falsey
# #       # end
# #       describe'authenticate method' do
# #         it"devrait retouner nul en cas d'inéquation entre email/mdp" do
# #           wrong_passord_user = User.authenticate(@attr[:eamil], 'wrongpass')
# #         end
# #         it "devrait retourner nil quand un email ne correspond à aucun utilisateur" do
# #           nonexistent_user = User.authenticate('bar@foo.com', @attr[:password])
# #           nonexistent_user.should be_nil
# #         end
# #
# #         it "devrait retourner l'utilisateur si email/mot de passe correspondent" do
# #           matching_user = User.authenticate(@attr[:email], @attr[:password])
# #           matching_user.should == @user
# #         end
# #       end
# #     end
# #   end
# # end
# describe User do
#   describe "les associations au micro-message" do
#
#     before(:each) do
#       @user = User.create(@attr)
#     end
#
#     it "devrait avoir un attribut 'microposts'" do
#       @user.should respond_to(:microposts)
#     end
#   end
# end
