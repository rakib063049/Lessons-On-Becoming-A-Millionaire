class Course < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by, :category_ids, :instructor_ids, :lesson_ids
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :instructors
  has_and_belongs_to_many :lessons
  validates_presence_of :title, :sub_title, :summary
  validates_presence_of :category_ids, :message => "Please select the category"
  validates_presence_of :instructor_ids, :message => "Please select the Instructor"
  validates_presence_of :lesson_ids, :message => "Please select the Lesson"

end
