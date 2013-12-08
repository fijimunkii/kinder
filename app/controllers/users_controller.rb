class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      render json: { success: true }
    else
      render json: @user.errors
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: { success: true }
  end
end
