# require 'rails_helper'
#
# RSpec.describe UsersController, type: :controller do
#   render_views
#   before(:each) do
#     @base_title = 'Simple App du Tutoriel Ruby on Rails'
#   end
#   describe 'GET #new' do
#     it 'returns http success' do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#     it "devrait avoir le titre adéquat" do
#       get :new
#       expect(response.body).to have_title(@base_title + ' | Inscription')
#     end
#   end
#   # describe"GET 'show'" do
#   #   it'devrait avoir le bon titre' do
#   #     get :show, id: @user
#   #     expect(response.body).to have_selector('title')
#   #   end
#   #   it"devrait inclure le nom de l'utilisateur " do
#   #     get :show, id: @user
#   #     expect(response.body).to have_selector('h1', content: @user.nom)
#   #   end
#   #   it 'devrait avoir une image de profil' do
#   #     get :show, id: @user
#   #     expect(response.body).to have_selector('h1>img', class: 'gravatar')
#   #   end
#   # end
#   describe 'GET #new' do
#     it 'devrait réussir' do
#       get :new
#       expect(response).to have_http_status(:success)
#     end
#     it 'devrait avoir le bon titre' do
#       get :new
#       expect(response.body).to have_title('Inscription')
#     end
#   end
#   describe"POST'create'" do
#     describe "échec" do
#       before(:each) do
#         @attr = { nom: '', email: '', password: '', password_confirmation: '' }
#       end
#       it"ne devrait pas créer d utilisateur" do
#         lambda do
#           post :create, user: @attr
#         end.should_not change(User, :count)
#       end
#       # it'devarit avoir le bon titre' do
#       #   post :create, user: @attr
#       #   expect(response.body).to have_title(content: 'Inscription')
#       # end
#       it"devrait rendre la page 'new'" do
#         post :create, user: @attr
#         response.should render_template('new')
#       end
#     end
#     describe"succès" do
#       before(:each) do
#         @attr = { nom: 'New user', email: 'user@example.com', password: 'foobar', password_confirmation: 'foobar' }
#         it"devrai créer un utilisateur" do
#           lambda do
#             post :create, user: @attr
#           end.should change(User, :count).by(1)
#         end
#         it"devrait rediriger vers la page d'affichage de l'utilisateur" do
#           post :create, user: @attr
#           response.should redirect_to(user_path(assigns(:user)))
#         end
#         it'devrait un message de success' do
#           post :create, user: @attr
#           flash[:success].should =~ /Bienvenue dans l'application Exemple/i
#         end
#       end
#     end
#   end
# end
