class CreateTableCategoriesCourses < ActiveRecord::Migration
  def up
    create_table :categories_courses, :id => false do |t|
      t.integer :category_id
      t.integer :course_id
    end

    add_index :categories_courses, [:course_id, :category_id]
  end

  def down
    drop_table :categories_courses
  end
end
