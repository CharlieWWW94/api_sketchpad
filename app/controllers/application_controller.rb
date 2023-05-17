class ApplicationController < ActionController::API
    #   
    # include ActionController::Cookies
    # include ActionController::RequestForgeryProtection
  
    # protect_from_forgery with: :exception
  
  private


  # def set_csrf_cookie
  #   cookies["CSRF-TOKEN"] = {
  #        value: form_authenticity_token,
  #        domain: :all 
  #    }
  # end

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
