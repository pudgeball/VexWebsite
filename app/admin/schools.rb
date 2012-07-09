ActiveAdmin.register School do
  config.sort_order = :id_asc
  
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
  
  sidebar "Things linked to this School", only: :show do
    table_for Team.where(:school_id => school.id) do |t|
      t.column("Teams") { |team| link_to team.name, admin_team_path(team) }
    end
    
    table_for User.where(:school_id => school.id) do |t|
      t.column("Users") { |user| link_to user.name, admin_user_path(user) }
    end
  end
  
  filter :region
  filter :name
  filter :created_at
end