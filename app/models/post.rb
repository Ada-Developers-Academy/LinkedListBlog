class Post < ActiveRecord::Base

  def comments
    comments = []
    cursor = Comment.find(comments_id)

    while cursor
      comments << cursor
      cursor = cursor.next
    end

    comments
  end
end
