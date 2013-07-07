require "spec_helper"

describe ClosingDaysController do
  describe "routing" do

    it "routes to #index" do
      get("/closing_days").should route_to("closing_days#index")
    end

    it "routes to #new" do
      get("/closing_days/new").should route_to("closing_days#new")
    end

    it "routes to #show" do
      get("/closing_days/1").should route_to("closing_days#show", :id => "1")
    end

    it "routes to #edit" do
      get("/closing_days/1/edit").should route_to("closing_days#edit", :id => "1")
    end

    it "routes to #create" do
      post("/closing_days").should route_to("closing_days#create")
    end

    it "routes to #update" do
      put("/closing_days/1").should route_to("closing_days#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/closing_days/1").should route_to("closing_days#destroy", :id => "1")
    end

  end
end
