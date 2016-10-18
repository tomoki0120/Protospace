class PopularsController < ApplicationController
  def index
    @prototypes = Proto.includes(:images,:user).order('likes_count DESC').page(params[:page])
  end
end
