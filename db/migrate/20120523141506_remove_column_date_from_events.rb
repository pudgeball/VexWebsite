class RemoveColumnDateFromEvents < ActiveRecord::Migration
  def up
    remove_column :events, :date
      end

  def down
    add_column :events, :date, :date
  end
end
