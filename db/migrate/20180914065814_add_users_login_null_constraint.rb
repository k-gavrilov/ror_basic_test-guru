class AddUsersLoginNullConstraint < ActiveRecord::Migration[5.2]
  def change
    change_column_null(:users, :login, false)
  end
end
