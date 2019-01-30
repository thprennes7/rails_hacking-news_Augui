class Comment < ApplicationRecord
  #Permet de dire à la class qu'elle apartientà la table user, post
  belongs_to :user
  belongs_to :post
  #Permet de dire à la class qu'elle a plusieurs sub_comments
  has_many :sub_comments
end
