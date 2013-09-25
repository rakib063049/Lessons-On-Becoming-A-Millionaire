ActiveAdmin.register Course do
  menu :priority => 6

  filter :title, :as => :string

  index do
    column :title, :sortable => 'title' do |resource|
      link_to resource.title, resource_path(resource) unless resource.title.nil?
    end

    column :sub_title do |resource|
      resource.sub_title unless resource.sub_title.nil?
    end

    column :summary do |resource|
      resource.summary unless resource.summary.nil?
    end

    column :created_by do |resource|
      resource.created_by
    end

    column "Action" do |resource|
      links = ''.html_safe
      links += link_to "Edit", edit_resource_path(resource), :class => "member_link edit_link"
      links += link_to "Destroy", resource_path(resource), :method => :delete, :confirm => "Are you Sure?", :class => "member_link delete_link"
      links
    end
  end

  show do |course|
    attributes_table do
      row :title
      row :sub_title
      row :summary
      row :created_by
    end
  end
  form :partial => "/courses/form"
end
