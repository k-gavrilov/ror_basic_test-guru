class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :body
      t.references(:test, foreign_key: {to_table: :tests})

      t.timestamps
    end
  end
end
