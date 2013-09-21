class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :vimeo_link
      t.string :video_length
      t.string :summary
      t.string :action_steps
      t.string :transcript
      t.string :faq
      t.string :subscription
      t.integer :created_by

      t.timestamps
    end
  end
end
