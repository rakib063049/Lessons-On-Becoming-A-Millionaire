ActiveAdmin.register Lesson do
  menu :priority => 7

  filter :title, :as => :string

  index do
    column :title, :sortable => 'title' do |resource|
      link_to resource.title, resource_path(resource) unless resource.title.nil?
    end

    column :vimeo_link do |resource|
      resource.vimeo_link unless resource.vimeo_link.nil?
    end

    column :video_length do |resource|
      resource.video_length unless resource.video_length.nil?
    end

    column :summary do |resource|
      resource.summary unless resource.summary.nil?
    end


    column :action_steps do |resource|
      resource.action_steps unless resource.action_steps.nil?
    end

    column :transcript do |resource|
      resource.transcript unless resource.transcript.nil?
    end

    column :faq do |resource|
      resource.faq unless resource.faq.nil?
    end

    column :subscription do |resource|
      resource.subscription unless resource.subscription.nil?
    end

    column "Action" do |resource|
      links = ''.html_safe
      links += link_to "Edit", edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to "Destroy", resource_path(resource), :method => :delete, :confirm => "Are you Sure?", :class => "member_link delete_link"
      links
    end
  end

  show do |lesson|
    attributes_table do
      row :title
      row :vimeo_link
      row :video_length
      row  :summary
      row  :action_steps
      row  :transcript
      row  :faq
      row  :subscription
    end
  end
  form :partial => "/lessons/form"
end
