class Instructor < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by
  has_and_belongs_to_many :courses
end
