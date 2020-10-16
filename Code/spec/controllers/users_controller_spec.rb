require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'signup' do
    it 'creates a new user' do
      expect {post :signup, user: {username: 'new-user', password: 'rikka', email: 'email_1_@gmail.com'}}.to change { User.count }.by(1)
    end
    # let!(:user1) { User.create(username: 'new-user', password: 'rikka', email: 'email_1_@gmail.com', user_type:1)}
    # it 'check the secure code' do
    #   expect user1['user_tyepe']
    # end
  end
  
  # describe 'new' do
  #   it 'initilize a new user' do
  #     expect {post :new}.to change { User.count }.by(1)
  #   end
  # end
  
end
