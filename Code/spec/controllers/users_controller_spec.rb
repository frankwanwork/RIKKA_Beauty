require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'signup' do
    it 'creates a new user' do
      expect {post :signup, user: {username: 'new-user-1', password: 'rikka', email: 'email_1_@gmail.com'}}.to change { User.count }.by(1)
    end
    # let!(:user1) { User.create(username: 'new-user', password: 'rikka', email: 'email_1_@gmail.com', user_type:1)}
    # it 'check the secure code' do
    #   expect user1['user_tyepe']
    # end
  end
  
  describe "GET #signup_show" do
    it "returns http success" do
      get :signup_show
      expect(response).to have_http_status(:success)
    end
  end
  
  # describe "GET #signup" do
  #   let!(:user1) { User.create(username: 'new-user', password: 'rikka', email: 'email_1_@gmail.com', user_type:1)}
  #   # params = {:email=>"1445", :username=>"aaa", :password=>"bbb", format: :json}
  #   it "returns http success" do
  #     params = {:user=>user1}
  #     get :signup, params
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  
end
