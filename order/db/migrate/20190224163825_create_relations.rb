class CreateRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :relations do |t|
      t.integer :follow_id
      t.integer :follwer

      t.timestamps
    end
  end
end
