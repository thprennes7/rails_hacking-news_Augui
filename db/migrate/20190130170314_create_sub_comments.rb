class CreateSubComments < ActiveRecord::Migration[5.2]
  def change
    create_table :sub_comments do |t|
      #Création de nos colonnes
      t.string :content
      #Permet de lier à la table comment, user et lui dire qu'elle lui apartient
      t.belongs_to :comment
      t.belongs_to :user
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
