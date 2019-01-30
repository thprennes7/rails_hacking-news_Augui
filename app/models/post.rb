class Post < ApplicationRecord
  #Permet de dire a la class qu'elle apartient à la table user
  belongs_to :user
  #Permet de dire a la class qu'elle a plusieurs comments
  has_many :comments
end
