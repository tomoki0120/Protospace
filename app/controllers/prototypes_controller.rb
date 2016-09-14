class PrototypesController < ApplicationController

  def index
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
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :catch_copy, :concept, :user_id, images_attributes: [:id, :image_url, :status])
  end

end
