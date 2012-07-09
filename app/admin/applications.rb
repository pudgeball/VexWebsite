ActiveAdmin.register Application do
  config.sort_order = :id_asc
  
  index do
    column :id
    column :teamName
    column :userName
    column :userEmail
    column :schoolName
    default_actions
  end
  
  filter :teamName
  filter :userName
  filter :userEmail
  filter :schoolName
  filter :created_at
end
