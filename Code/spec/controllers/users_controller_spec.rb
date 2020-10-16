require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #signin" do
    it "returns http success" do
      get :signin
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #signup" do
    it "returns http success" do
      get :signup
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #signin_show" do
    it "returns http success" do
      get :signin_show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #signup_show" do
    it "returns http success" do
      get :signup_show
      expect(response).to have_http_status(:success)
    end
  end

  # describe "GET #forgot" do
  #   it "returns http success" do
  #     get :forgot
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  # describe "GET #forgot_show" do
  #   it "returns http success" do
  #     get :forgot_show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
