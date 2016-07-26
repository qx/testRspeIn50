require 'rails_helper'

RSpec.describe "robots/new", type: :view do
  before(:each) do
    assign(:robot, Robot.new(
      :name => "MyString",
      :price => 1
    ))
  end

  it "renders new robot form" do
    render

    assert_select "form[action=?][method=?]", robots_path, "post" do

      assert_select "input#robot_name[name=?]", "robot[name]"

      assert_select "input#robot_price[name=?]", "robot[price]"
    end
  end
end
