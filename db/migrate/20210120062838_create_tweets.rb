class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.text :text, null: false
      t.integer :answer, null: false
      t.integer :lesson, null: false
      t.timestamps
    end
  end
end
