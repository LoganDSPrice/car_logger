require "rails_helper"

RSpec.describe "documents/index", type: :view do
  before(:each) do
    assign(:documents, [
             Document.create!(
               shop_visit: nil,
               image: "Image",
             ),
             Document.create!(
               shop_visit: nil,
               image: "Image",
             ),
           ])
  end

  it "renders a list of documents" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
  end
end
