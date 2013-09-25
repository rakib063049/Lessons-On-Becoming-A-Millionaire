class AddSlugToInstructor < ActiveRecord::Migration
  def change
    add_column :instructors, :slug, :string
    add_index :instructors, :slug, :unique => true
  end
end
