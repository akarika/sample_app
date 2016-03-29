require'rails_helper'

describe MicropostsController do
render_views
describe "controle d'accés" do
  it "devrait refuser l'accés pour 'create'" do
    post :create
    expect(response).to redirect_to(signup_path)
  end
  it "devrait refuser l'accés pour 'destroy'" do
    delete :destroy, id: 1
    expect(response).to redirect_to(signup_path)
  end
end
end
