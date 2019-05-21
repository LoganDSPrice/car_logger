require "rails_helper"

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
             Service.create!(
               cost: 2.5,
               description: "Description",
               notes: "MyText",
               part: nil,
               shop_visit: nil,
             ),
             Service.create!(
               cost: 2.5,
               description: "Description",
               notes: "MyText",
               part: nil,
               shop_visit: nil,
             ),
           ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
