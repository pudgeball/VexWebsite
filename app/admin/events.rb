ActiveAdmin.register Event do
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
      f.input :region
      f.input :spotsAvailable, as: :select, collection: 1..36
      f.input :time
    end
    f.buttons
  end
end
