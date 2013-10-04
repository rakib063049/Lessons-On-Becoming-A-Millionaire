class CourseLesson < ActiveRecord::Base
  attr_accessible :course_id, :lesson_id
  belongs_to :course
  belongs_to :lesson

end
