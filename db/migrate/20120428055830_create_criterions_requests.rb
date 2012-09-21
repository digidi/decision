class CreateCriterionsRequests < ActiveRecord::Migration
  def change
    create_table :criterions_requests do |t|
      t.integer :criterion_id
      t.integer :request_id

      t.timestamps
    end
  end
end
