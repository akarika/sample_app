# require 'rails_helper'
# #
# # describe'Une inscription' do
# #   describe "ratée" do
# #     it"ne devrait pas créer un nouvel utilisateur" do
# #       lambda do
# #         visit signup_path
# #         page.fill_in 'Nom', with: ''
# #         fill_in 'Email', with: ''
# #         fill_in 'Password', with: ''
# #
# #         click_button
# #         response.should render_template('users/new')
# #         response.should have_selector('div#error_explanation')
# #       end.should_not change(User, :count)
# #     end
# #   end
# #   describe "réussie" do
# #     it "devrait créer un nouvel utilisateurr" do
# #       lambda do
# #         visit signup_path
# #         fill_in 'Nom', with: 'Example User'
# #         fill_in 'Email', with: 'user@example.com'
# #         fill_in 'Password', with: 'foobar'
# #
# #         click_button('Inscription')
# #         expect(page).to have_selector('div.flash.success',
# #                                       content: 'Bienvenue')
# #         response.should render_template('users/show')
# #       end.should change(User, :count).by(1)
# #     end
# #   end
# describe 'Attribut admin' do
#   before(:each) do
#     @user = User.create!(@attr)
#   end
#
#   it "devrait confirmer l'existence de `admin`" do
#     @user.should respond_to(:admin)
#   end
#
#   it "ne devrait pas être un administrateur par défaut" do
#     @user.should_not be_admin
#   end
# 
#   it 'devrait pouvoir devenir un administrateur' do
#     @user.toggle!(:admin)
#     @user.should be_admin
#   end
# end
