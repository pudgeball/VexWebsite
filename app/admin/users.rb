ActiveAdmin.register User do
  index do
    column :id
    column :role
    column :name
    column :email
    column :school
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :email
      f.input :password
      f.input :role
      f.input :school, collection: @Schools
    end
    f.buttons
  end
  
  show do |s|
    attributes_table do
      row :id
      row :role
      row :name
      row :school
      row :email
      row :created_at
    end
    active_admin_comments
  end
  
  filter :school, collection: @Schools
  filter :role
  filter :name
  filter :created_at
  filter :email
  
end
