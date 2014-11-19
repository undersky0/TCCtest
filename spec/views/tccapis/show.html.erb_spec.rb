require 'rails_helper'

RSpec.describe "tccapis/show", :type => :view do
  before(:each) do
    @tccapi = assign(:tccapi, Tccapi.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
