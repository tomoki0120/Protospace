class NewestsController < ApplicationController
  def index
    @prototypes = Proto.pagination_per(params[:page])
  end
end
