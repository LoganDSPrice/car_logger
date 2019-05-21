require "rails_helper"

RSpec.describe "documents/edit", type: :view do
  before(:each) do
    @document = assign(:document, Document.create!(
                                    shop_visit: nil,
                                    image: "MyString",
                                  ))
  end

  it "renders the edit document form" do
    render

    assert_select "form[action=?][method=?]", document_path(@document), "post" do
      assert_select "input[name=?]", "document[shop_visit_id]"

      assert_select "input[name=?]", "document[image]"
    end
  end
end
