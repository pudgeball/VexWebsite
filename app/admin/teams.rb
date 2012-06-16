ActiveAdmin.register Team do
  
  index do
    column :id
    column :name
    column :numStudents
    column :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "Details" do
      f.input :school, collection: @Schools
      f.input :name
      f.input :numStudents, as: :number
    end
    f.buttons
  end
  
  filter :school, collection: @Schools
  filter :name
  filter :numStudents
  filter :created_at
end
