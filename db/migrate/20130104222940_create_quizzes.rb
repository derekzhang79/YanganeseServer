class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :title
      t.string :author
      t.integer :category_id
      t.integer :rating_count
      t.integer :rating_value
      t.integer :download_count

      t.timestamps
    end
  end
end
