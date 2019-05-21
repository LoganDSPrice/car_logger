require "rails_helper"

RSpec.describe "documents/new", type: :view do
  before(:each) do
    assign(:document, Document.new(
                        shop_visit: nil,
                        image: "MyString",
                      ))
  end

  it "renders new document form" do
    render

    assert_select "form[action=?][method=?]", documents_path, "post" do
      assert_select "input[name=?]", "document[shop_visit_id]"

      assert_select "input[name=?]", "document[image]"
    end
  end
end
