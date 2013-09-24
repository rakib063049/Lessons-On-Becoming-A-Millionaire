class AddVideosToLesson < ActiveRecord::Migration
  def change
    add_column :lessons, :video, :string
    add_column :lessons, :video_file_name, :string
    add_column :lessons, :video_file_size, :integer
    add_column :lessons, :video_content_type, :string
    add_column :lessons, :aasm_state, :string
  end
end
