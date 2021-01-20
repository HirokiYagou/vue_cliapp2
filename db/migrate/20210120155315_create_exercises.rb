class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.integer :exercise_type, null: false
      t.integer :question_id, null: false
      t.integer :score, null: false
      t.timestamps
    end
  end
end
