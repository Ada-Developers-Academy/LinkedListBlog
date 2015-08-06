class Comment < ActiveRecord::Base

  def next
    return nil if next_id == 0

    Comment.find(next_id)
  end

  def append(comment)

  end

  def remove(id)

  end

  def to_ary
    if self.next
      [self] + self.next.to_ary
    else
      [self]
    end
  end
end

# Don't modify this
require "#{Rails.root}/lib/extensions/active_record/relation/explicit_addressing"
::ActiveRecord::Relation::ActiveRecord_Relation_Comment.send(:include,
    Extensions::ActiveRecord::Relation::ExplicitAddressing)
