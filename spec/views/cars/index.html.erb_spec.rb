require "rails_helper"

RSpec.describe "cars/index", type: :view do
  before(:each) do
    assign(:cars, [
             Car.create!(
               name: "Name",
               make: "Make",
               model: "Model",
               year: "Year",
               user: nil,
             ),
             Car.create!(
               name: "Name",
               make: "Make",
               model: "Model",
               year: "Year",
               user: nil,
             ),
           ])
  end

  it "renders a list of cars" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Make".to_s, count: 2
    assert_select "tr>td", text: "Model".to_s, count: 2
    assert_select "tr>td", text: "Year".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
