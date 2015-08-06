class Comment < ActiveRecord::Base

  def next
  end

  def append(comment)

  end

  def remove(id)

  end

  def to_ary

  end
end

# Don't modify this
require "#{Rails.root}/lib/extensions/active_record/relation/explicit_addressing"
::ActiveRecord::Relation::ActiveRecord_Relation_Comment.send(:include,
    Extensions::ActiveRecord::Relation::ExplicitAddressing)
