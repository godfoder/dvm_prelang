require 'rails_helper'

RSpec.describe "Values", :type => :request do
  describe "GET /values" do
    it "works! (now write some real specs)" do
      get values_path
      expect(response.status).to be(200)
    end
  end
end
