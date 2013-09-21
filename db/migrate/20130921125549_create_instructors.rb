class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :title
      t.string :sub_title
      t.string :summary
      t.integer :created_by
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_updated_at

      t.timestamps
    end
  end
end
