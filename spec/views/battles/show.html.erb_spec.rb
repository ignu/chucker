require 'rails_helper'

RSpec.describe "battles/show", type: :view do
  before(:each) do
    @battle = assign(:battle, Battle.create!(
      name: "Name",
      initiative: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
