class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :teamName
      t.string :userName
      t.string :userEmail
      t.string :schoolName

      t.timestamps
    end
  end
end
