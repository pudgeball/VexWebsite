ActiveAdmin.register School do
  index do
    column :id
    column :name
    column :region
    column :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :region
      f.input :name
    end
    f.buttons
  end
  
  filter :region
  filter :name
  filter :created_at
end
