class Comment < ActiveRecord::Base

  def next
  end
end

# Don't modify this
require "#{Rails.root}/lib/extensions/active_record/relation/explicit_addressing"
::ActiveRecord::Relation::ActiveRecord_Relation_Comment.send(:include,
    Extensions::ActiveRecord::Relation::ExplicitAddressing)
