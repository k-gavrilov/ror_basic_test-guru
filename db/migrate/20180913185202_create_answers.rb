class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :body
      t.boolean :correct
      t.references(:question, foreign_key: {to_table: :questions})
      t.integer :question_id

      t.timestamps
    end
  end
end
