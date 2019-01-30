# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

SubComment.destroy_all
Comment.destroy_all
Post.destroy_all
User.destroy_all

5.times do
  User.create!(name: Faker::Name.name)
  5.times do
    Post.create!(content: Faker::ChuckNorris.fact, url: Faker::Internet.url('chuck_norris.com'), user_id: User.last.id)
  end
end

5.times do |index|
  Comment.create!(content: Faker::ChuckNorris.fact, user_id: User.first.id.to_i + index, post_id: Post.first.id.to_i + rand(24))
  SubComment.create!(content: Faker::ChuckNorris.fact,user_id: User.last.id.to_i - index, comment_id: Comment.last.id)
end
