class Course < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by, :category_ids, :instructor_ids, :lesson_ids
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :instructors
  has_and_belongs_to_many :lessons
end
