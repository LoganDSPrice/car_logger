require "rails_helper"

RSpec.describe "cars/new", type: :view do
  before(:each) do
    assign(:car, Car.new(
                   name: "MyString",
                   make: "MyString",
                   model: "MyString",
                   year: "MyString",
                   user: nil,
                 ))
  end

  it "renders new car form" do
    render

    assert_select "form[action=?][method=?]", cars_path, "post" do
      assert_select "input[name=?]", "car[name]"

      assert_select "input[name=?]", "car[make]"

      assert_select "input[name=?]", "car[model]"

      assert_select "input[name=?]", "car[year]"

      assert_select "input[name=?]", "car[user_id]"
    end
  end
end
