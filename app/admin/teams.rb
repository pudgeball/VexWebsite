ActiveAdmin.register Team do
  config.sort_order = :id_asc
  
  index do
    column :id
    column :name
    column :numStudents
    column :school
    column :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :school
      f.input :name
      f.input :numStudents, as: :select, collection: 1..36
    end
    f.buttons
  end
  
  filter :school
  filter :name
  filter :numStudents
  filter :created_at
end
