require 'spec_helper'

describe "ClosingDays" do
  describe "GET /closing_days" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get closing_days_path
      response.status.should be(200)
    end
  end
end
