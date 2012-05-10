class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :numStudents
      t.references :school

      t.timestamps
    end
    add_index :teams, :school_id
  end
end
