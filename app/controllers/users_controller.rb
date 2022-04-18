class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :is_valid?

  def show
    @user = User.find_by_email(user_params)
    if @user
      render json: @user, status: :ok
    else
      render json: { errors: ['User not found'] }, status: :not_found
    end
  end

  private

  def user_params
    params.require(:email)
  end
end
