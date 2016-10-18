class CommentsController < ApplicationController
  before_action :set_comment, only: [:create,:destroy]

  def create
    Comment.create(comment_params)
  end

  def destroy
    comment = Comment.find_by(proto_id: params[:prototype_id],user_id: current_user.id)
    comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:comment_text).merge(user_id: current_user.id,proto_id: params[:prototype_id])
  end

  def set_comment
    @comments = Comment.where(proto_id: params[:prototype_id])
  end
end
