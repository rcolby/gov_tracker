require 'spec_helper'

describe HomeController do
  include Devise::TestHelpers

  describe "index" do
    it "responds successfully with an HTTP 200 status code." do
      user = User.create(:name => "Test", :email => "test@example.com", :password => "abcd1234", :password_confirmation => "abcd1234", :zip => 90210)
      sign_in user
      get :index
      expect(response).to be_success
      expect(response.status).to eq 200
    end

  end

  describe "detail" do
    it "responds successfully with an HTTP 200 status code." do
      # user = User.create(:name => "Test", :email => "testing@example.com", :password => "abcd1234", :password_confirmation => "abcd1234", :zip => 10015)
      # sign_in user
      # user.get_reps
      get :detail, :bioguide_id => "B000711"
      expect(response).to be_success
      expect(response.status).to eq 200
    end
    
  end

end