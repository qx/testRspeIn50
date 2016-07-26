require 'rails_helper'

RSpec.describe "robots/index", type: :view do
  before(:each) do
    assign(:robots, [
      Robot.create!(
        :name => "Name",
        :price => 2
      ),
      Robot.create!(
        :name => "Name",
        :price => 2
      )
    ])
  end

  it "renders a list of robots" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
