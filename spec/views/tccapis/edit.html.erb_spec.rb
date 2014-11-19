require 'rails_helper'

RSpec.describe "tccapis/edit", :type => :view do
  before(:each) do
    @tccapi = assign(:tccapi, Tccapi.create!())
  end

  it "renders the edit tccapi form" do
    render

    assert_select "form[action=?][method=?]", tccapi_path(@tccapi), "post" do
    end
  end
end
