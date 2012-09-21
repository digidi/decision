class CreateCriterionsTasks < ActiveRecord::Migration
    create_table "criterions_tasks", :force => true do |t|
      t.integer "criterion_id"
      t.integer "task_id"
    end

    add_index "criterions_tasks", ["task_id"], :name => "index_criterions_tasks_on_task_id"
    add_index "criterions_tasks", ["criterion_id"], :name => "index_criterions_tasks_on_criterion_id"
end
