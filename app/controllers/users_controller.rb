class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
    # @pakings = Paking.where(user_id: current.user.id)
    # @user.parkings

  end
  def edit
  	@user = User.find(params[:id])
  end
  def update
  	 @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to parking_path
  end

  def park_list
    @user = User.find(current_user.id)
  end

  private

  def user_params
      params.require(:user).permit(:name, :email)
  end

end
