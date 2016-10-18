class NewestsController < ApplicationController
  def index
    @prototypes = Proto.pagination_newest_per(params[:page])
  end
end
