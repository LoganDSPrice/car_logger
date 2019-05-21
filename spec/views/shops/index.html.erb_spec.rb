require "rails_helper"

RSpec.describe "shops/index", type: :view do
  before(:each) do
    assign(:shops, [
             Shop.create!(
               name: "Name",
               street_address: "Street Address",
               city: "City",
               state: "State",
               zip_code: 2,
               phone_number: "Phone Number",
             ),
             Shop.create!(
               name: "Name",
               street_address: "Street Address",
               city: "City",
               state: "State",
               zip_code: 2,
               phone_number: "Phone Number",
             ),
           ])
  end

  it "renders a list of shops" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Street Address".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
  end
end
