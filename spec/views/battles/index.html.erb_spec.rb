require 'rails_helper'

RSpec.describe "battles/index", type: :view do
  before(:each) do
    assign(:battles, [
      Battle.create!(
        name: "Name",
        initiative: 2
      ),
      Battle.create!(
        name: "Name",
        initiative: 2
      )
    ])
  end

  it "renders a list of battles" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
