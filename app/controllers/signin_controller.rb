class SigninController < ApplicationController
  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.password == params[:password]
      session[:user_id] = @user.id
      flash[:notice] = "Hi #{@user.fname}!"
      redirect_to '/'
    else
      flash[:notice] = "We were unable to authenticate you"
      redirect_to '/signin'
    end
  end
end
