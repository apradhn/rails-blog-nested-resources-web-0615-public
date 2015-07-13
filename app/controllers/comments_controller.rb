class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment =  @post.comments.build(comment_params)
    @comment.save
    redirect_to @post
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
