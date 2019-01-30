class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      #Création de nos colonnes
      t.string :content
      #Permet de lier à la table user, post et lui dire qu'elle lui apartient
      t.belongs_to :user
      t.belongs_to :post
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
