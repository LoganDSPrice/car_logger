require "rails_helper"

RSpec.describe "ShopVisits", type: :request do
  describe "GET /shop_visits" do
    it "works! (now write some real specs)" do
      get shop_visits_path
      expect(response).to have_http_status(200)
    end
  end
end
