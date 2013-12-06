require 'spec_helper'

describe "users/new" do
  before(:each) do
    assign(:user, stub_model(User,
      :fb_id => "MyString",
      :oauth_token => "MyString",
      :email => "MyString",
      :bio => "MyText",
      :img_url => "MyString"
    ).as_new_record)
  end

  it "renders new user form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input#user_fb_id[name=?]", "user[fb_id]"
      assert_select "input#user_oauth_token[name=?]", "user[oauth_token]"
      assert_select "input#user_email[name=?]", "user[email]"
      assert_select "textarea#user_bio[name=?]", "user[bio]"
      assert_select "input#user_img_url[name=?]", "user[img_url]"
    end
  end
end
