class AddUserIdToCategory < ActiveRecord::Migration[5.2]
  def change
    add_column :categories, :relate_id, :integer
  end
end
