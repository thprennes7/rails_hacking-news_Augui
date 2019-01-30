class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      #Création de nos colonnes
      t.string :name
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
