ActiveAdmin.register Application do
  index do
    column :id
    column :teamName
    column :userName
    column :userEmail
    column :schoolName
    default_actions
  end
  
end
