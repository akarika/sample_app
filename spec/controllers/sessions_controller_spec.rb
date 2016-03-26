require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  render_views
  describe 'GET #new' do
    it "devrait réussir" do
      get :new
      expect(response).to have_http_status(:success)
    end
    it'devrait voir le bon titre' do
      get :new

      expect(response.body).to have_content "S'identifier"
    end
  end
  describe "'POST''create'" do
    describe 'invalid signin' do
      before(:each) do
        @attr = { email: 'email@eample.com', password: 'invalid' }
      end
      it'devrait re-rendre la page new' do
        post :create, session: @attr
        expect(response).to render_template('new')
      end
      it'devrait avoir un message flash.now' do
        post :create, session: @attr
        flash.now[:danger].should =~ /invalid/i
      end
    end
    describe 'avec un email et un mot de passe valides' do
      before(:each) do
        @user = FactoryGirl.create(:user)
        @attr = { email: @user.email, password: @user.password }
      end

      it "devrait identifier l'utilisateur" do
        post :create, session: @attr
        controller.current_user.should == @user
        controller.should be_signed_in
      end

      #       it "devrait rediriger vers la page d'affichage de l'utilisateur" do
      #         subject { post :create, session: @attr }
      #         expect(response).to redirect_to(user_path(@user))
      #       end
      #       it "devrait rediriger vers la page d'affichage de l'utilisateur" do
      #         subject { post :create, session: @attr }
      #         expect(subject).to redirect_to(user_path(@user))
      #       end
      #     end
      #     describe "DELETE 'destroy'" do
      #
      #   it "devrait déconnecter un utilisateur" do
      #     test_sign_in(Factory.create(:user))
      #     delete :destroy
      #     controller.should_not be_signed_in
      #     response.should redirect_to(root_path)
      #   end
    end
    describe "GET 'edit'" do
      before(:each) do
        @user = FactoryGirl.build(:user)
        test_sign_in(@user)
      end
      it"devrait réussir" do
        get :edit, id: @user
        expect(response).to be_success
      end
      it'devrait avoir le bon titre ' do
        get :edit, id: @user
        expect(response).to have_title("Édition profil")
      end
      it "devrait avoir un lien pour changerl'image Gravatar" do
        get :edit, id: @user
        gravatar_url = 'http://gravatar.com/emails'
        expect(response).to have_selector('a')
        expect(response).to have_content('changer')
        expect(response).to have_link('gravatar_url')
      end
    end
  end
end
