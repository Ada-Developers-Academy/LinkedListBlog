# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

# Load our comments and posts
BASE_PATH = Rails.root.join('db', 'data')

CSV.foreach(BASE_PATH + '20150806_comments.csv', converters: :all, headers: true, header_converters: :symbol) do |r|
  Comment.create!(r.to_hash)
end

CSV.foreach(BASE_PATH + '20150806_posts.csv', converters: :all, headers: true, header_converters: :symbol) do |r|
  Post.create!(r.to_hash)
end
