class NewestsController < ApplicationController
  def index
    @prototypes = Proto.includes(:images,:user).order("created_at DESC").page(params[:page]).per(10)
  end
end
