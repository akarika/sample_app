require 'spec_helper'

RSpec.describe "LayoutLinks", type: :request do
  describe "test route" do

    it "devrait trouber une page d'acceuil à '/' " do
      get '/'
      expect(response).to be_success
    end
    it "devrait trouber une page Contact à '/contact' " do
      get '/contact'
      expect(response).to be_success
    end
    it "devrait trouber une page A propos à '/about' " do
      get '/about'
      expect(response).to be_success
    end
    it "devrait trouber une page Help à '/help' " do
      get '/help'
      expect(response).to be_success
    end

    # test des lien
    it"devrait avoir le bon lien" do
    visit root_path
    click_link "À Propos"
    page.has_selector?('title')
    page.has_content?('À Propos')
    click_link"Contact"
    page.has_content?('Contact')
    click_link"Accueil"
    page.has_content?('Accueil')
    click_link"Inscrivez-vous"
    page.has_content?("Inscrivez-vous")
    click_link"Aide"
    page.has_content?('Aide')
end

end
end
