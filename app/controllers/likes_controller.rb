class LikesController < ApplicationController
  # GET users/1/likes
  # GET users/1/likes.json
  def index
    @user = User.find(params[:user_id])
    @likes = @user.likes

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @likes }
    end
  end

  # GET users/1/likes/1
  # GET users/1/likes/1.json
  def show
    @user = User.find(params[:user_id])
    @like = @user.likes.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @like }
    end
  end

  # GET users/1/likes/new
  # GET users/1/likes/new.json
  def new
    @user = User.find(params[:user_id])
    @like = @user.likes.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @like }
    end
  end

  # GET users/1/likes/1/edit
  def edit
    @user = User.find(params[:user_id])
    @like = @user.likes.find(params[:id])
  end

  # POST users/1/likes
  # POST users/1/likes.json
  def create
    @user = User.find(params[:user_id])
    @like = @user.likes.build(params[:like])

    respond_to do |format|
      if @like.save
        format.html { redirect_to([@like.user, @like], :notice => 'Like was successfully created.') }
        format.json { render :json => @like, :status => :created, :location => [@like.user, @like] }
      else
        format.html { render :action => "new" }
        format.json { render :json => @like.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT users/1/likes/1
  # PUT users/1/likes/1.json
  def update
    @user = User.find(params[:user_id])
    @like = @user.likes.find(params[:id])

    respond_to do |format|
      if @like.update_attributes(params[:like])
        format.html { redirect_to([@like.user, @like], :notice => 'Like was successfully updated.') }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @like.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE users/1/likes/1
  # DELETE users/1/likes/1.json
  def destroy
    @user = User.find(params[:user_id])
    @like = @user.likes.find(params[:id])
    @like.destroy

    respond_to do |format|
      format.html { redirect_to user_likes_url(user) }
      format.json { head :ok }
    end
  end
end
