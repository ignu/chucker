require 'rails_helper'

RSpec.describe "battles/new", type: :view do
  before(:each) do
    assign(:battle, Battle.new(
      name: "MyString",
      initiative: 1
    ))
  end

  it "renders new battle form" do
    render

    assert_select "form[action=?][method=?]", battles_path, "post" do

      assert_select "input[name=?]", "battle[name]"

      assert_select "input[name=?]", "battle[initiative]"
    end
  end
end
