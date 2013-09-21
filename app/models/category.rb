class Category < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by
end
