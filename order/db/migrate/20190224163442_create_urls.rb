class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.text :url
      t.string :category
      t.string :title
      t.integer :user_id

      t.timestamps
    end
  end
end
