require "rails_helper"

RSpec.describe "services/show", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
                                  cost: 2.5,
                                  description: "Description",
                                  notes: "MyText",
                                  part: nil,
                                  shop_visit: nil,
                                ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2.5/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
