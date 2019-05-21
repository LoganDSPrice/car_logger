require "rails_helper"

RSpec.describe "shop_visits/edit", type: :view do
  before(:each) do
    @shop_visit = assign(:shop_visit, ShopVisit.create!(
                                        miles: 1,
                                        car: nil,
                                        shop: nil,
                                      ))
  end

  it "renders the edit shop_visit form" do
    render

    assert_select "form[action=?][method=?]", shop_visit_path(@shop_visit), "post" do
      assert_select "input[name=?]", "shop_visit[miles]"

      assert_select "input[name=?]", "shop_visit[car_id]"

      assert_select "input[name=?]", "shop_visit[shop_id]"
    end
  end
end
