class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @post.comments.build(params[:id])
    @post.save
    redirect_to @post
  end
end
