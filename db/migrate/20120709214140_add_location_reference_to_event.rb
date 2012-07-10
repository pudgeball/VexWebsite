class AddLocationReferenceToEvent < ActiveRecord::Migration
  def change
    change_table :events do |t|
      t.string :location
    end

  end
end
