require "rails_helper"

RSpec.describe "shop_visits/index", type: :view do
  before(:each) do
    assign(:shop_visits, [
             ShopVisit.create!(
               miles: 2,
               car: nil,
               shop: nil,
             ),
             ShopVisit.create!(
               miles: 2,
               car: nil,
               shop: nil,
             ),
           ])
  end

  it "renders a list of shop_visits" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
