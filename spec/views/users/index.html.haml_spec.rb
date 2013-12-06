require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :fb_id => "Fb",
        :oauth_token => "Oauth Token",
        :email => "Email",
        :bio => "MyText",
        :img_url => "Img Url"
      ),
      stub_model(User,
        :fb_id => "Fb",
        :oauth_token => "Oauth Token",
        :email => "Email",
        :bio => "MyText",
        :img_url => "Img Url"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fb".to_s, :count => 2
    assert_select "tr>td", :text => "Oauth Token".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Img Url".to_s, :count => 2
  end
end
