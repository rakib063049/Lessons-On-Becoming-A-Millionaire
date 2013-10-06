class CategoryLesson < ActiveRecord::Base
  attr_accessible :category_id, :lesson_id
  belongs_to :category
  belongs_to :lesson
end
