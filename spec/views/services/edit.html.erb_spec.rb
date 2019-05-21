require "rails_helper"

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
                                  cost: 1.5,
                                  description: "MyString",
                                  notes: "MyText",
                                  part: nil,
                                  shop_visit: nil,
                                ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do
      assert_select "input[name=?]", "service[cost]"

      assert_select "input[name=?]", "service[description]"

      assert_select "textarea[name=?]", "service[notes]"

      assert_select "input[name=?]", "service[part_id]"

      assert_select "input[name=?]", "service[shop_visit_id]"
    end
  end
end
