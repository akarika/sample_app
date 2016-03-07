require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  before(:each) do
    @base_title = 'Simple App du Tutoriel Ruby on Rails'
  end



  describe "GET #home" do
    it "returns http success" do
      get :home
      expect(response).to be_success
    end
  it "should have the right title" do
    get :home
    expect(response.body).to have_selector('title', :text => @base_title + '| Home')
  end
end
  describe "GET #contact" do
    it "returns http success" do
      get :contact
      expect(response).to be_success
    end
      it "should have the right title" do
    get :contact
    expect(response.body).to have_selector('title', :text => @base_title +'#{ | Contact}')
  end
  end
  describe "GET #contact" do
    it "returns http success" do
      get :about
      expect(response).to be_success
    end
      it "should have the right title" do
    get :about
    expect(response.body).to have_selector('title', :text => @base_title + ' | About')
  end
  end
  describe "GET #help" do
    it"return http success"do
    get :help
    expect(response).to be_success
  end
        it "should have the right title" do
    get :help
    expect(response.body).to have_selector('title', :text => @base_title + ' | Help')
  end
end
end
