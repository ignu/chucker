require 'rails_helper'

RSpec.describe "battles/edit", type: :view do
  before(:each) do
    @battle = assign(:battle, Battle.create!(
      name: "MyString",
      initiative: 1
    ))
  end

  it "renders the edit battle form" do
    render

    assert_select "form[action=?][method=?]", battle_path(@battle), "post" do

      assert_select "input[name=?]", "battle[name]"

      assert_select "input[name=?]", "battle[initiative]"
    end
  end
end
