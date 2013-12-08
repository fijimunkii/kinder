class LikesController < ApplicationController

  def index
    @user = User.find(params[:user_id])
    @likes = @user.likes
    render :json => @likes
  end

  def show
    @user = User.find(params[:user_id])
    @like = @user.likes.find(params[:id])
    render :json => @like
  end

  def create
    @user = User.find(params[:user_id])
    @like = @user.likes.build(params[:like])

    if @like.save
      render :json => @like
    else
      render :json => @like.errors
    end
  end

  def update
    @user = User.find(params[:user_id])
    @like = @user.likes.find(params[:id])

    if @like.update_attributes(params[:like])
      render :json => { success: true }
    else
      render :json => @like.errors
    end
  end

  def destroy
    @user = User.find(params[:user_id])
    @like = @user.likes.find(params[:id])
    render :json => { success: true }
  end
end
