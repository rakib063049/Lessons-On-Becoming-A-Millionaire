class SubCategory < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by, :category_id
  belongs_to :category
end
