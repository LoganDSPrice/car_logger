require "rails_helper"

RSpec.describe "shops/show", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
                            name: "Name",
                            street_address: "Street Address",
                            city: "City",
                            state: "State",
                            zip_code: 2,
                            phone_number: "Phone Number",
                          ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Phone Number/)
  end
end
