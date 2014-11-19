require 'rails_helper'

RSpec.describe "Tccapis", :type => :request do
  describe "GET /tccapis" do
    it "works! (now write some real specs)" do
      get tccapis_path
      expect(response).to have_http_status(200)
    end
  end
end
