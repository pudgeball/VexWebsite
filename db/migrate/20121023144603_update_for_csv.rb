class UpdateForCsv < ActiveRecord::Migration
  def change
    change_table :schools do |t|
      t.string :city
      t.string :province
      t.string :country
    end
  end
end
