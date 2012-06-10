ActiveAdmin.register User do
  index do
    column :id
    column :role
    column :name
    column :email
    default_actions
  end
end
