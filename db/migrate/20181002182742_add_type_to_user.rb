class AddTypeToUser < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :type, :string
    change_column :users, :type, :string, null: false
  end

  def down
    remove_column :users, :type
  end
end
