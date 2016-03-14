require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views
  before(:each) do
    @base_title = 'Simple App du Tutoriel Ruby on Rails'
  end
  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
    it "devrait avoir le titre adéquat" do
      get :new
      expect(response.body).to have_title(@base_title + ' | Inscription')
    end
  end
  describe"GET 'show'" do
    it'devrait avoir le bon titre' do
      get :show, id: @user
      expect(response.body).to have_selector('title')
    end
    it"devrait inclure le nom de l'utilisateur " do
      get :show, id: @user
      expect(response.body).to have_selector('h1', content: @user.nom)
    end
    it 'devrait avoir une image de profil' do
      get :show, id: @user
      expect(response.body).to have_selector('h1>img', class: 'gravatar')
    end
  end
end
