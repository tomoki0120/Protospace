class LikesController < ApplicationController

  def create
    @like = Like.create(proto_id:params[:prototype_id],user_id: current_user.id)
    @prototype = Proto.find(params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
  end

  def destroy
    like = Like.find_by(proto_id:params[:prototype_id],user_id: current_user.id)
    like.destroy
    @prototype = Proto.find(params[:prototype_id])
    @likes = Like.where(prototype_id: params[:prototype_id])
  end
end
