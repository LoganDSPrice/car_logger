require "rails_helper"

RSpec.describe "shop_visits/show", type: :view do
  before(:each) do
    @shop_visit = assign(:shop_visit, ShopVisit.create!(
                                        miles: 2,
                                        car: nil,
                                        shop: nil,
                                      ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
