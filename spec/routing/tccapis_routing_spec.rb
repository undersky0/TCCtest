require "rails_helper"

RSpec.describe TccapisController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tccapis").to route_to("tccapis#index")
    end

    it "routes to #new" do
      expect(:get => "/tccapis/new").to route_to("tccapis#new")
    end

    it "routes to #show" do
      expect(:get => "/tccapis/1").to route_to("tccapis#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tccapis/1/edit").to route_to("tccapis#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tccapis").to route_to("tccapis#create")
    end

    it "routes to #update" do
      expect(:put => "/tccapis/1").to route_to("tccapis#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tccapis/1").to route_to("tccapis#destroy", :id => "1")
    end

  end
end
