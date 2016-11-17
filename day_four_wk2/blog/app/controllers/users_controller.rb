class UsersController < ApplicationController
  def index
    @users = User.all
    # @bcrypt = Bcrypt
  end

  def show
    @user = User.find( params[ :id ] )
  end

  def create
    @user = User.create( user_params )
    redirect_to users_url
  end

  def destroy
    puts "PARAMS ARE" + params.inspect
    @user = User.find( params[ :id ] )
    @user.destroy
    redirect_to users_url
  end

  private

  def user_params
    params.require( :user ).permit( :username, :password, :password_digest )
  end
end
