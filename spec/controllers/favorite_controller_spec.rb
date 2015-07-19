require 'rails_helper'

RSpec.describe FavoriteController, :type => :controller do

  describe "GET mark" do
    it "returns http success" do
      get :mark
      expect(response).to have_http_status(:success)
    end
  end

end
