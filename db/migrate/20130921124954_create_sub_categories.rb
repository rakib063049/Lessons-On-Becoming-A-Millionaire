class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
      t.string :title
      t.string :sub_title
      t.string :summary
      t.integer :created_by
      t.integer :category_id

      t.timestamps
    end
  end
end
