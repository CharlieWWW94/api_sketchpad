class RegistrationsController < ApplicationController
  before_action :verify_session, only: %i[ destroy ]

  # POST /registrations
  def create
    @user = User.new(registration_params)
    if User.create(registration_params)
      render json: {message: "Account Created."}, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /registrations/1
  def destroy
    if current_user.destroy
      render json: {message: "Account successfully deleted" }, status: :accepted
    else
      render json: {message: "Oops, something went wrong!"}, status: :unprocessable_entity
    end
  end

  private

    # Only allow a list of trusted parameters through.
    def registration_params
      params.require(:user).permit(:username, :password)
    end
end
