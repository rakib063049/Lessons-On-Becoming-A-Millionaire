class AddCategoryIdAndInstructorIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :category_id, :integer
    add_column :lessons, :instructor_id, :integer
  end
end
