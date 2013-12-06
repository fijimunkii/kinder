require 'spec_helper'

describe "welcome/index.html.haml" do

  before(:each) do
    visit '/'
  end

  context "when not logged in" do
    it "should have a connect with facebook button" do
      expect(page).to have_content("Connect with Facebook")
    end
  end
end
