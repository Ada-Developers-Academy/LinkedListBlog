class Post < ActiveRecord::Base
  belongs_to :comments
end
