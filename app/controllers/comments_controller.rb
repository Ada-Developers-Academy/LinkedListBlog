class CommentsController < ApplicationController
  before_action :find_post

  def create
    comment = Comment.create!(create_params)
    @post.comments.append(comment)
    redirect_to '/'
  end

  def delete
    @post.comments.remove(params[:id].to_i)
    redirect_to '/'
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def create_params
    params.require(:comment).permit(:name, :body)
  end
end
