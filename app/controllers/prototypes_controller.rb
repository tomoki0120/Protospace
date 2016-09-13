class PrototypesController < ApplicationController

  def index
  end

  def new
    @prototypes = Prototype.new
    @prototypes.images.build
  end

  def create
    @prototypes = Prototype.create(create_params)
    redirect_to :root
  end

  def show
  end

  private
  def create_params
    params.require(:proto).permit(:title, :catch_copy, :concept, :user_id, images_attributes: [:id, :image_url, :status])
  end
end
