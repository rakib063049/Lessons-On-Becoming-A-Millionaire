class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :sub_title
      t.string :summary
      t.integer :created_by

      t.timestamps
    end
  end
end
