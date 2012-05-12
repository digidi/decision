class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :title
      t.text :body
      t.integer :task_id
      t.integer :user_id
      t.string :method

      t.timestamps
    end
  end
end
