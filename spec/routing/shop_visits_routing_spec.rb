require "rails_helper"

RSpec.describe ShopVisitsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/shop_visits").to route_to("shop_visits#index")
    end

    it "routes to #new" do
      expect(get: "/shop_visits/new").to route_to("shop_visits#new")
    end

    it "routes to #show" do
      expect(get: "/shop_visits/1").to route_to("shop_visits#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/shop_visits/1/edit").to route_to("shop_visits#edit", id: "1")
    end

    it "routes to #create" do
      expect(post: "/shop_visits").to route_to("shop_visits#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/shop_visits/1").to route_to("shop_visits#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/shop_visits/1").to route_to("shop_visits#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/shop_visits/1").to route_to("shop_visits#destroy", id: "1")
    end
  end
end
