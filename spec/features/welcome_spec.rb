require 'spec_helper'

describe "welcome/index.html.haml" do

  before(:each) do
    visit '/'
  end

  context "when not logged in" do
    it "should have a log in button" do
      expect(page).to have_content("Log In")
    end
  end
end
