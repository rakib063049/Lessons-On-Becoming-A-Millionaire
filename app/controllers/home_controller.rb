class HomeController < ApplicationController
  def index
    @lessons = Lesson.all(:limit => 6)
    @instructors = Instructor.all
    render :layout => 'application'
  end
  def dashboard
    @lessons = Lesson.all(:limit => 6)
    @instructors = Instructor.all
    @categories = Category.all
    @instructor = Instructor.all(:limit => 1, :order => "id DESC")
    render :layout => 'application'
  end
end
