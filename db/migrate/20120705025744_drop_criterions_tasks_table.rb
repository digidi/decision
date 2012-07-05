class DropCriterionsTasksTable < ActiveRecord::Migration
  def up
    drop_table :criterions_tasks
  end

  def down
  end
end
