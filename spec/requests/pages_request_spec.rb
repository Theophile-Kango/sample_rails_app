require 'rails_helper'

RSpec.describe "Pages", type: :request do

  describe "GET /home" do
    it "returns http success" do
      get "/pages/home"
      expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
      :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get "/pages/contact"
      expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
      :content => "Ruby on Rails Tutorial Sample App | Contact")
      end
  end

  describe "GET /about" do
    it "returns http success" do
        get "/pages/about"
        expect(response).to have_http_status(:success)
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
      :content => "Ruby on Rails Tutorial Sample App | About")
    end
  end

end
