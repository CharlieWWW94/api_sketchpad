class ApplicationController < ActionController::API
  
  private


  def verify_session
    unless session[:user_id] && current_user
      render json:
        {message: "You are not authorized to access this resource. Please log in."},
        status: :unauthorized
    end
  end

  def current_user
    current_user = User.find(session[:user_id])
  end

end
