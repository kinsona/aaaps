class UsersController < ApplicationController

  def create
    @user = User.new(new_user_params)
    if @user.save
      render json: @user
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
