require "rails_helper"

RSpec.describe "cars/show", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
                          name: "Name",
                          make: "Make",
                          model: "Model",
                          year: "Year",
                          user: nil,
                        ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Make/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Year/)
    expect(rendered).to match(//)
  end
end
