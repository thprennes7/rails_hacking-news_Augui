class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :content
      t.string :url
      t.belongs_to :user
      t.timestamps
    end
  end
end
