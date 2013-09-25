class Instructor < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by, :photo
  has_and_belongs_to_many :courses
  has_attached_file :photo, :styles => {:small => '150*85 >'}
end
