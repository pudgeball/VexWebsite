ActiveAdmin.register Region do
  config.sort_order = :id_asc
  
  index do
    column :id
    column :name
    column :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :name
    end
    f.buttons
  end
  
  
  filter :name
  filter :created_at
end
