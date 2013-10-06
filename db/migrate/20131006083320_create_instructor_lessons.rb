class CreateInstructorLessons < ActiveRecord::Migration
  def change
    create_table :instructor_lessons do |t|
      t.integer :instructor_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
