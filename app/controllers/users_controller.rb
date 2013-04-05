class UsersController < ApplicationController
  def index
    @users = User.order(:username).all
  end

  def show
    begin
      @user = User.find params[:id]
    rescue
      redirect_to users_path
    end
  end

  def edit
    begin
      @user = User.find params[:id]
    rescue
      redirect_to users_path
    end
  end

  def update
    begin
      @user = User.find_by_id(params[:id])
      if @user.update_attributes(params[:user])
        redirect_to @user, notice: "User was saved successful"
      else
        render :edit
      end
    rescue
      render :edit
    end
  end

  def new
    @user =User.new
  end

  def destroy
  end

  def create
    @user = User.new(params[:user])
    if @user.valid? then
    if@user.save!
      redirect_to @user, notice: "User was saved successful"
    else
      render :new
    end
  else
    render :new
    end
  end
end
