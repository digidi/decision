class CreateRequestsUsers < ActiveRecord::Migration
  create_table "requests_users", :force => true do |t|
      t.integer "user_id"
      t.integer "request_id"
      t.text "value"
      
    end
end
