class CommentsController < ApplicationController
  def create
    Comment.create(comment_text: set_comment[:comment_text],proto_id: params[:prototype_id],user_id: current_user.id) 
    @comments = Comment.where(proto_id: params[:prototype_id])
  end


  private
  def set_comment
    params.require(:comment).permit(:comment_text)
  end
end
