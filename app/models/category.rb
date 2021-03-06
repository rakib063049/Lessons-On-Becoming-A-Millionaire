class Category < ActiveRecord::Base
  attr_accessible :title, :sub_title, :summary, :created_by
  has_many :sub_categories
  has_many :category_lessons
  has_many :lessons, :through => :category_lessons
  has_many :category_courses
  has_many :courses, :through => :category_courses
  validates_presence_of :title, :sub_title
  def self.videos(data)
    query = data.slice(0..1)
    @videos = Lesson.where("title like ?", "%#{query}%").page(params[:page]).per(2)

  end
end
