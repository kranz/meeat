require "spec_helper"

describe TimesTableController do
  describe "routing" do

    it "routes to #index" do
      get("/times_table").should route_to("times_table#index")
    end

    it "routes to #new" do
      get("/times_table/new").should route_to("times_table#new")
    end

    it "routes to #show" do
      get("/times_table/1").should route_to("times_table#show", :id => "1")
    end

    it "routes to #edit" do
      get("/times_table/1/edit").should route_to("times_table#edit", :id => "1")
    end

    it "routes to #create" do
      post("/times_table").should route_to("times_table#create")
    end

    it "routes to #update" do
      put("/times_table/1").should route_to("times_table#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/times_table/1").should route_to("times_table#destroy", :id => "1")
    end

  end
end
