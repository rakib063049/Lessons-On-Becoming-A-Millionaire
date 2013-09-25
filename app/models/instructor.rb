class Instructor < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by, :photo_content_type, :photo_file_name, :photo_file_size, :photo_updated_at
  has_attached_file :photo
end
