class FixRegion < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.remove :region
      t.references :region
    end
    
    change_table :schools do |t|
      t.remove :region
      t.references :region
    end
  end
end
