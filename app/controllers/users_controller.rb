class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # after add kaminari, pagination (add page)
    @post_images = PostImage.page(params[:page])
  end

  # pull user from id in URL (/users/xxx/edit)
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end


  private
  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
