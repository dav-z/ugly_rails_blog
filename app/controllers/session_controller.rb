class SessionController < ApplicationController
  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

end
