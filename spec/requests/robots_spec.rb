require 'rails_helper'

RSpec.describe "Robots", type: :request do
  describe "GET /robots" do
    it "works! (now write some real specs)" do
      get robots_path
      expect(response).to have_http_status(200)
    end
  end
end
