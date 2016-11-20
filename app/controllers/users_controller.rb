class UsersController < ApplicationController

  def create
    @existing_user = User.where(device_id: params[:device_id]).first
    @new_user = User.new(new_user_params)

    if @existing_user
      render json: @existing_user, status: 200
    elsif @new_user.save
      render json: @new_user, status: 201
    else
      render nothing: true, status: 400
    end    
  end

  # def update
  # end

  def show
    @user = User.where(device_id: params[:id]).first
    if @user
      render json: @user
    else
      render nothing: true, status: 400
    end
  end

  # no index, that's for admin only

  private

    def new_user_params
      params.permit(:device_id)
    end

end
