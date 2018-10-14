class AddEmailToUser < ActiveRecord::Migration[5.2]
  def up
    add_column :users, :email, :string
    change_column :users, :email, :string, null: false
  end

  def down
    remove_column :users, :email
  end
end
