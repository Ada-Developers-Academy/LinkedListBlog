class Comment < ActiveRecord::Base

  def next
    return nil if self.next_id == 0

    Comment.find(self.next_id)
  end

  def append(comment)
    if self.next
      self.next.append(comment)
    else
      self.next = comment
    end
  end

  def remove(id)
    if self.next
      if self.next.id == id
        self.next = self.next.next
      else
        self.next.remove(id)
      end
    end
  end

  def to_ary
    if self.next
      [self] + self.next.to_ary
    else
      [self]
    end
  end

  private

  def next=(comment)
    return self.update!(next_id: 0) if not comment

    self.update!(next_id: comment.id)
  end
end

# Don't modify this
require "#{Rails.root}/lib/extensions/active_record/relation/explicit_addressing"
::ActiveRecord::Relation::ActiveRecord_Relation_Comment.send(:include,
    Extensions::ActiveRecord::Relation::ExplicitAddressing)
