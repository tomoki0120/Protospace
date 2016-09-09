class UsersController < ApplicationController


  def show
    each_user
  end

  def edit
    each_user
  end

  def update
    each_user
    @user.update(update_params)
    redirect_to :root
  end

  private
  def update_params
    params.require(:user).permit(:name,:email,:position,:profile,
      :occupation)
  end

  def each_user
    @user = User.find(params[:id])
  end

end
