require 'spec_helper'

describe "likes/edit" do
  before(:each) do
    @like = assign(:like, stub_model(Like,
      :user_id => 1,
      :related_user_id => 1
    ))
  end

  it "renders the edit like form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", like_path(@like), "post" do
      assert_select "input#like_user_id[name=?]", "like[user_id]"
      assert_select "input#like_related_user_id[name=?]", "like[related_user_id]"
    end
  end
end
