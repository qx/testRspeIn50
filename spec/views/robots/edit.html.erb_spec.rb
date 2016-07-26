require 'rails_helper'

RSpec.describe "robots/edit", type: :view do
  before(:each) do
    @robot = assign(:robot, Robot.create!(
      :name => "MyString",
      :price => 1
    ))
  end

  it "renders the edit robot form" do
    render

    assert_select "form[action=?][method=?]", robot_path(@robot), "post" do

      assert_select "input#robot_name[name=?]", "robot[name]"

      assert_select "input#robot_price[name=?]", "robot[price]"
    end
  end
end
