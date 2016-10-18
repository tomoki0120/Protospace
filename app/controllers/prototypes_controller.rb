class PrototypesController < ApplicationController

  before_action :set_prototype, only: [:edit,:update,:destroy,:show]
  before_action :set_photo, only: [:show,:edit]

  def index
    @prototypes = Proto.pagination_prototype_per(params[:page])
  end

  def new
    @prototypes = Proto.new
    @prototypes.images.build
  end

  def create
    @prototypes = Proto.new(proto_params)
    if @prototypes.save
      redirect_to :root,notice: 'upload complete'
    else
      redirect_to action: "new", alert: 'Not complete'
    end
  end

  def show
    @prototype.likes
    @comment = Comment.new
    @prototype.comments
  end

  def edit
  end

  def destroy
    @prototype.destroy
    redirect_to :root, notice: 'You could destroy your prototype.'
  end

  def update
    if @prototype.update(proto_params)
      redirect_to action: show, notice: 'You could edit your prototype.'
    else
      redirect_to action: edit , alert: 'You cannot edit your prototype.'
    end
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :catch_copy, :concept, images_attributes: [:id, :photo, :status]).merge(user_id: current_user.id,tag_list: params[:proto][:tag])
  end

  def set_prototype
    @prototype = Proto.find(params[:id])
  end

  def set_photo
    set_prototype
    @sub_photo = @prototype.images_sub
    @main_photo = @prototype.image_main_photo
  end
  
end
