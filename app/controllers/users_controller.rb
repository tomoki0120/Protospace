class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update]
  before_action :authenticate_user!, only: [:edit,:update]

  def show
    set_user
  end

  def edit
    set_user
  end

  def update
    set_user
    @user.update(update_params)
    redirect_to :root
  end

  private
  def update_params
    params.require(:user).permit(:name,:email,:position,:profile,
      :occupation)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
