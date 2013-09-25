class Instructor < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessible :title, :sub_title, :summary, :created_by, :photo
  has_and_belongs_to_many :courses
  has_many :lessons
  has_attached_file :photo, :styles => {:small => '200*180 >'}
end
