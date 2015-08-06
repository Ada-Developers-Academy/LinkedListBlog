class HomeController < ApplicationController

  def index
    # Display our latest blog post
    @post = Post.all.first || Post.new

    # For now get all of the comments
    # maybe implement paging later?
    @comments = @post.comments.to_ary || []
  end
end
