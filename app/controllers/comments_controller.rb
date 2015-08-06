class CommentsController < ApplicationController
  before_action :find_post

  def create

    redirect_to '/'
  end

  def delete

    redirect_to '/'
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
