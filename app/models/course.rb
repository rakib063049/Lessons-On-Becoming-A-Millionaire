class Course < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by, :category_ids, :instructor_ids, :lesson_ids, :category_courses_attributes, :course_lessons_attributes, :course_instructors_attributes
  has_many :category_courses
  has_many :course_instructors
  has_many :course_lessons
  has_many :categories, :through => :category_courses
  has_many :instructors, :through => :course_instructors
  has_many :lessons, :through => :course_lessons

  validates_presence_of :title, :sub_title, :summary
  validates_presence_of :category_courses, :message => "Please select the category"
  validates_presence_of :course_instructors, :message => "Please select the Instructor"
  validates_presence_of :course_lessons, :message => "Please select the Lesson"


  accepts_nested_attributes_for :category_courses, :allow_destroy => true
  accepts_nested_attributes_for :course_instructors, :allow_destroy => true
  accepts_nested_attributes_for :course_lessons, :allow_destroy => true
end
