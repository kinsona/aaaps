class UsersController < ApplicationController

  def create
    @user = User.new(new_user_params)
    if @user.save
      format.json { render json: @user }
    else
      render :nothing, status: 400
    end
  end

  # def update
  # end

  def show
    @user = User.find(params[:id])
    if @user
      format.json { render json: @user }
    else
      render :nothing, status: 400
    end
  end

  # no index, that's for admin only

  private

    def new_user_params
      params.require(:user).permit(:device_id)
    end

end
