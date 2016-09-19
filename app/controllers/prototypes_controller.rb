class PrototypesController < ApplicationController

  def index
    @prototypes = Proto.order("updated_at DESC").page(params[:page]).per(10)
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
    @prototype = Proto.find(params[:id])
  end

  private
  def proto_params
    params.require(:proto).permit(:title, :catch_copy, :concept, :user_id, images_attributes: [:id, :photo, :status])
  end

end
