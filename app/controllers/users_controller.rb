class UsersController < ApplicationController

  def destroy
  end

  def edit
  end

  def update
  end

  def show
    if current_user
      @user = User.find(params[:id])
      @boats = Boat.where(user_id: @user_id)
    else
    end
  end

  def index
    @users = User.all
  end

  # private

  # def user_params
  #   params.require(:boat).permit(:name, :location, :email, :capacity)
  # end
end