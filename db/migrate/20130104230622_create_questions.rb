class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :answer
      t.integer :category_id
      t.integer :quiz_id
      t.text :text
      t.string :w
      t.string :x
      t.string :y
      t.string :z

      t.timestamps
    end
  end
end
