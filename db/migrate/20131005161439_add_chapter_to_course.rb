class AddChapterToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :chapter, :string
  end
end
