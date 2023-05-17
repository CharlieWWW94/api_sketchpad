class SessionsController < ApplicationController
  before_action :verify_session, only: %i[ destroy ]


  # POST /sessions
  def create
    @user = User.find_by(username: session_params[:username])

    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id
      render json: @user, status: :ok
    else
      render json: 
      {message: "Login failed. Check your username and password"},
      status: :unprocessable_entity
    end
  end


  # DELETE /sessions/1
  def destroy
    session[:user_id] = nil
  end

  private

    # Only allow a list of trusted parameters through.
    def session_params
      params.require(:user).permit(:username, :password)
    end
end
