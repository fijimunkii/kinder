require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :fb_id => "Fb",
      :oauth_token => "Oauth Token",
      :email => "Email",
      :bio => "MyText",
      :img_url => "Img Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fb/)
    rendered.should match(/Oauth Token/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/Img Url/)
  end
end
