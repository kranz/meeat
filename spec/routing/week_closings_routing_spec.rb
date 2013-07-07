require "spec_helper"

describe WeekClosingsController do
  describe "routing" do

    it "routes to #index" do
      get("/week_closings").should route_to("week_closings#index")
    end

    it "routes to #new" do
      get("/week_closings/new").should route_to("week_closings#new")
    end

    it "routes to #show" do
      get("/week_closings/1").should route_to("week_closings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/week_closings/1/edit").should route_to("week_closings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/week_closings").should route_to("week_closings#create")
    end

    it "routes to #update" do
      put("/week_closings/1").should route_to("week_closings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/week_closings/1").should route_to("week_closings#destroy", :id => "1")
    end

  end
end
