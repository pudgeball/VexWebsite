class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :region
      t.string :name
      t.date :date
      t.integer :spotsAvailable

      t.timestamps
    end
  end
end
