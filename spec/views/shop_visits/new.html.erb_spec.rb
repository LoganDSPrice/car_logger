require "rails_helper"

RSpec.describe "shop_visits/new", type: :view do
  before(:each) do
    assign(:shop_visit, ShopVisit.new(
                          miles: 1,
                          car: nil,
                          shop: nil,
                        ))
  end

  it "renders new shop_visit form" do
    render

    assert_select "form[action=?][method=?]", shop_visits_path, "post" do
      assert_select "input[name=?]", "shop_visit[miles]"

      assert_select "input[name=?]", "shop_visit[car_id]"

      assert_select "input[name=?]", "shop_visit[shop_id]"
    end
  end
end
