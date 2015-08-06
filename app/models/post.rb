class Post < ActiveRecord::Base

  def comments
    Comment.find(comments_id).to_ary
  end
end
