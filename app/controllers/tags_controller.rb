class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    @tag = ActsAsTaggableOn::Tag.where(name: tag_params)
    @prototypes = Proto.tagged_with(@tag).pagination_prototype_per(params[:page])
  end

  private
  def tag_params
    ActsAsTaggableOn::Tag.find(params[:id]).name
  end

end
