ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc { I18n.t("active_admin.dashboard") }

  content :title => proc { I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span "Welcome to Lessons On Becoming A Millionaire"
      end
    end


    columns do
      column do
        panel "Recent Users" do
          ul do
            User.all.each do |user|
              li link_to(user.full_name, admin_user_path(user))
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Recent Category" do
          ul do
            Category.all.each do |category|
              li link_to(category.title, admin_category_path(category))
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Recent SubCategory" do
          ul do
            SubCategory.all.each do |sub_category|
              li link_to(sub_category.title, admin_sub_category_path(sub_category))
            end
          end
        end
      end
    end


    columns do
      column do
        panel "Recent Instructors" do
          ul do
            Instructor.all.each do |instructor|
              li link_to(instructor.title, admin_instructor_path(instructor))
            end
          end
        end
      end
    end

    columns do
      column do
        panel "Recent Lessons" do
          ul do
            Lesson.all.each do |lesson|
              li link_to(lesson.title, admin_lesson_path(lesson))
            end
          end
        end
      end

    end
  end

end
