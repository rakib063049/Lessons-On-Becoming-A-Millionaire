class CreateCourseLessons < ActiveRecord::Migration
  def change
    create_table :course_lessons do |t|
      t.integer :course_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
