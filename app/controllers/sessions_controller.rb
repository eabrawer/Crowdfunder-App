class SessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	if login(params[:email], params[:password])
  		redirect_back_or_to(root_path, :notice => 'Login Successful')
  	else
  		@user = User.new(params[:user])
  		flash.now[:alert] = "Invalid" 
  		render "new"
    end
 	end
  
  def destroy
  	logout
  	redirect_back_or_to(root_path, :notice => "Bye")
  end  
end
