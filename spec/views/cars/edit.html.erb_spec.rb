require "rails_helper"

RSpec.describe "cars/edit", type: :view do
  before(:each) do
    @car = assign(:car, Car.create!(
                          name: "MyString",
                          make: "MyString",
                          model: "MyString",
                          year: "MyString",
                          user: nil,
                        ))
  end

  it "renders the edit car form" do
    render

    assert_select "form[action=?][method=?]", car_path(@car), "post" do
      assert_select "input[name=?]", "car[name]"

      assert_select "input[name=?]", "car[make]"

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[year]"

      assert_select "input[name=?]", "car[user_id]"
    end
  end
end
