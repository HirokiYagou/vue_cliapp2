class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :text, null: false
      t.integer :answer, null: false
      t.timestamps
    end
  end
end
