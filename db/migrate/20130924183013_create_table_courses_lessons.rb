class CreateTableCoursesLessons < ActiveRecord::Migration
  def up
    create_table :courses_lessons, :id => false do |t|
      t.integer :lesson_id
      t.integer :course_id
    end

    add_index :courses_lessons, [:lesson_id, :course_id]
  end

  def down
    drop_table :courses_lessons
  end
end
