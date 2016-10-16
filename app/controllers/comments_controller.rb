class CommentsController < ApplicationController
  before_action :set_comment, only: [:create]

  def create
    Comment.create(comment_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text).merge(user_id: current_user.id,proto_id: params[:prototype_id])
  end

  def set_comment
    @comments = Comment.find(proto_id: params[:prototype_id])
  end

end
