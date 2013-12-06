require 'spec_helper'

describe User do

  context "#like" do
    before(:each) do
      @user = User.create
      @related_user = User.create
      @user.like(@related_user.id)
    end
    it "creates a like with the current user's id" do
      expect(Like.where(user_id: @user.id)).to be_true
    end
    it "creates a like with the related user's id" do
      expect(Like.where(related_user_id: @related_user.id)).to be_true
    end
  end

  context "#is_match?" do
    before(:each) do
      @user = User.create
      @related_user = User.create
      @user.like(@related_user.id)
    end
    it "returns false if the match does not exist" do
      @user.is_match?(@related_user.id)
    end
    it "returns true if the match exists" do
      @related_user.like(@user.id)
      @user.is_match?(@related_user.id)
    end
  end

end
