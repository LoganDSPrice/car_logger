require "rails_helper"

RSpec.describe "parts/edit", type: :view do
  before(:each) do
    @part = assign(:part, Part.create!(
                            name: "MyString",
                            car: nil,
                          ))
  end

  it "renders the edit part form" do
    render

    assert_select "form[action=?][method=?]", part_path(@part), "post" do
      assert_select "input[name=?]", "part[name]"

      assert_select "input[name=?]", "part[car_id]"
    end
  end
end
