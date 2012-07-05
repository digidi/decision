class DropDangersTasksTable < ActiveRecord::Migration
  def up
    drop_table :dangers_tasks
  end

  def down
  end
end
