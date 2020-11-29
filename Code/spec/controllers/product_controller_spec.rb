require 'rails_helper'

RSpec.describe ProductController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end
  # describe "show" do
  #   let!(:product1) { Product.create!(productname: "name 1", description: "disc 1", price: "30")}
  #   let!(:product2) { Product.create!(productname: "name 2", description: "disc 2", price: "40")}
  #   it "returns all the products" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end

  describe "GET #add" do
    it "returns http success" do
      get :add
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #search" do
    it "returns http success" do
      get :search
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

end
