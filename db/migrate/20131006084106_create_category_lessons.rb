class CreateCategoryLessons < ActiveRecord::Migration
  def change
    create_table :category_lessons do |t|
      t.integer :category_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
