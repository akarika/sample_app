require 'rails_helper'

RSpec.describe "FriendlyForwardings", type: :request do
  describe "GET /friendly_forwardings" do
    it "works! (now write some real specs)" do
      get friendly_forwardings_path
      expect(response).to have_http_status(200)
    end
  end
end
require 'spec_helper'

# describe "FriendlyForwardings" do
#
#   it "devrait rediriger vers la page voulue après identification" do
#     user = Factory(:user)
#     visit edit_user_path(user)
#     # Le test suit automatiquement la redirection vers la page d'identification.
#     fill_in :email,    :with => user.email
#     fill_in :password, :with => user.password
#     click_button
#     # Le test suit à nouveau la redirection, cette fois vers users/edit.
#     response.should render_template('users/edit')
#   end
# end
