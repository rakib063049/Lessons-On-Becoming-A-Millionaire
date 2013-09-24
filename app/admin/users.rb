ActiveAdmin.register User do
  menu :priority => 2
  index do
    column :first_name
    column :last_name
    column :email
    column :lesson_viewed
    column :last_sign_in_at
    default_actions
  end

  filter :email

  form do |f|
    f.inputs "Users" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

  show do |lesson|
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :lesson_viewed
      row :last_sign_in_at
    end
  end
end                                   
