require 'spec_helper'

describe "TimeTables" do
  describe "GET /times_table" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get times_table_path
      response.status.should be(200)
    end
  end
end
