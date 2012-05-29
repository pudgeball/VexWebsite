class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :role
      t.string :name
      t.references :school

      t.timestamps
    end
    add_index :users, :school_id
  end
end
