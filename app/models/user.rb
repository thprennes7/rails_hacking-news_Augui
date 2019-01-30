class User < ApplicationRecord
  #Permet de dire a la class qu'elle a plusieurs posts, comments, sub_comments
  has_many :posts
  has_many :comments
  has_many :sub_comments
end
