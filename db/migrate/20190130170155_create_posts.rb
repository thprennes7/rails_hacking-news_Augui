class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      #Création de nos colonnes
      t.string :content
      t.string :url
      #Permet de lier à la table user et de lui dire qu'elle lui apartient
      t.belongs_to :user
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
