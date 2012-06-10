ActiveAdmin.register Event do
  index do
    column :id
    column :region
    column :name
    column :spotsAvailable
    column :time
    default_actions
  end
end
