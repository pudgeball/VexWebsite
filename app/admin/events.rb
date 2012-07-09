ActiveAdmin.register Event do
  config.sort_order = :id_asc
  
  index do
    column :id
    column :region
    column :name
    column :spotsAvailable
    column :time
    default_actions
  end
  
  form do |f|
    f.inputs "Event Details" do
      f.input :name
      f.input :region, collection: @Regions
      f.input :spotsAvailable, as: :select, collection: 1..36
      f.input :time
    end
    f.buttons
  end
end
