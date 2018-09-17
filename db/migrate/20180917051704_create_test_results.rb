class CreateTestResults < ActiveRecord::Migration[5.2]
  def change
    create_table :test_results do |t|
      t.boolean :completed
      t.integer :mark
      t.references :user, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
    change_column_null(:test_results, :completed, false)
    change_column_default(:test_results, :completed, from: nil, to: false)
  end
end
