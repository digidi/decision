class CreateDangersTasks < ActiveRecord::Migration
    create_table "dangers_tasks", :id => false, :force => true do |t|
      t.integer "danger_id"
      t.integer "task_id"
    end

    add_index "dangers_tasks", ["task_id"], :name => "index_dangers_tasks_on_task_id"
    add_index "dangers_tasks", ["danger_id"], :name => "index_dangers_tasks_on_danger_id"
end
