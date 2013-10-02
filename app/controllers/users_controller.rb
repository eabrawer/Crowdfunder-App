class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new params[:user]
  	if @user.save
  		auto_login(@user)
  		redirect_to root_path, :notice => "Account created"
  	else
  		render "new", :noctice => "Try again"
  	end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
