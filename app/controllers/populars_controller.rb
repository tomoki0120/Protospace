class PopularsController < ApplicationController
  def index
    @prototypes = Proto.pagination_per(params[:page])
  end
end
