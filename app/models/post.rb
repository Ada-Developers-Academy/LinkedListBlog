class Post < ActiveRecord::Base

  def comments
    Comment.find(comments_id)
  end
end
