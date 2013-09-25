class CreateTableCoursesInstructors < ActiveRecord::Migration
  def up
    create_table :courses_instructors, :id => false do |t|
      t.integer :instructor_id
      t.integer :course_id
    end

    add_index :courses_instructors, [:instructor_id, :course_id]
  end

  def down
    drop_table :courses_instructors
  end
end
