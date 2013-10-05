class Instructor < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessible :title, :sub_title, :summary, :created_by, :photo
  has_many :course_instructors
  has_many :courses, :through => :course_instructors
  has_many :lessons
  has_attached_file :photo, :styles => {:small => '200*180 >'}
  validates_presence_of :title, :sub_title, :summary
  validates_attachment_presence :photo, :message => "please upload a photo"
end
