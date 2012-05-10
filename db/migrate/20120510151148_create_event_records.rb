class CreateEventRecords < ActiveRecord::Migration
  def change
    create_table :event_records do |t|
      t.integer :win
      t.integer :tie
      t.integer :loss
      t.references :event
      t.references :team

      t.timestamps
    end
    add_index :event_records, :event_id
    add_index :event_records, :team_id
  end
end
