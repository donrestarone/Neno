class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new
  	@user.first_name = params[:user][:first_name]
  	@user.last_name = params[:user][:last_name]
  	@user.email = params[:user][:email]
  	@user.password = params[:user][:password]
  	@user.password_confirmation = params[:user][:password_confirmation]
  	@user.match = ActiveRecord::Type::Boolean.new.cast(params[:user][:match])

  	if @user.save
  		redirect_to user_path
  	else 
  		redirect_to new_user_path
  	end
  end

  def show
  	
  end

  def welcome 
    
  end 
end
