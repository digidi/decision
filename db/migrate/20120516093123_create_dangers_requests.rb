class CreateDangersRequests < ActiveRecord::Migration
  def change
    create_table :dangers_requests do |t|
      t.integer :danger_id
      t.integer :request_id

      t.timestamps
    end
  end
end
