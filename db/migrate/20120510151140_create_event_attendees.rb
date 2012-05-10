class CreateEventAttendees < ActiveRecord::Migration
  def change
    create_table :event_attendees do |t|
      t.references :team
      t.references :event

      t.timestamps
    end
    add_index :event_attendees, :team_id
    add_index :event_attendees, :event_id
  end
end
