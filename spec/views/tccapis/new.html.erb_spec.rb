require 'rails_helper'

RSpec.describe "tccapis/new", :type => :view do
  before(:each) do
    assign(:tccapi, Tccapi.new())
  end

  it "renders new tccapi form" do
    render

    assert_select "form[action=?][method=?]", tccapis_path, "post" do
    end
  end
end
