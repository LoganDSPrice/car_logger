require "rails_helper"

RSpec.describe "shops/edit", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
                            name: "MyString",
                            street_address: "MyString",
                            city: "MyString",
                            state: "MyString",
                            zip_code: 1,
                            phone_number: "MyString",
                          ))
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do
      assert_select "input[name=?]", "shop[name]"

      assert_select "input[name=?]", "shop[street_address]"

      assert_select "input[name=?]", "shop[city]"

      assert_select "input[name=?]", "shop[state]"

      assert_select "input[name=?]", "shop[zip_code]"

      assert_select "input[name=?]", "shop[phone_number]"
    end
  end
end
