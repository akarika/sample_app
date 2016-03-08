require 'rails_helper'

RSpec.describe "LayoutLinks", type: :request do
  describe "test route" do

    # it "devrait trouber une page d'acceuil à '/' " do
    #   get '/'
    #   expect(response).to be_success
    # end
    # it "devrait trouber une page Contact à '/contact' " do
    #   get '/contact'
    #   expect(response).to be_success
    # end
    # it "devrait trouber une page A propos à '/about' " do
    #   get '/about'
    #   expect(response).to be_success
    # end
    # it "devrait trouber une page Help à '/help' " do
    #   get '/help'
    #   expect(response).to be_success
    # end
it"devrait avoir le bon lien" do
visit '/'

expect(response.body).to have_title("A propos")
end

end
end
