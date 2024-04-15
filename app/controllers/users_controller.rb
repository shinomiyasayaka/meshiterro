class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images
  end

  def edit
  end
  
  def user_params
    params.require(:user).permit(:id, :profile_image)
  end
end
