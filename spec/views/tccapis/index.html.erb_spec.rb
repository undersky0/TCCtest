require 'rails_helper'

RSpec.describe "tccapis/index", :type => :view do
  before(:each) do
    assign(:tccapis, [
      Tccapi.create!(),
      Tccapi.create!()
    ])
  end

  it "renders a list of tccapis" do
    render
  end
end
