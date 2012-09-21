class CreateDangersRequestsUsers < ActiveRecord::Migration    
  def change
    create_table :dangers_requests_users do |t|
      t.integer :danger_request_id
      t.integer :user_id
      t.text :value

      t.timestamps
    end
  end
end

