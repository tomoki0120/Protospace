class PopularsController < ApplicationController
  def index
    @prototypes = Proto.pagination_popular_per(params[:page])
  end
end
