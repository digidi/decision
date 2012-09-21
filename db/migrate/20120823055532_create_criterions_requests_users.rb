class CreateCriterionsRequestsUsers < ActiveRecord::Migration    
  def change
    create_table :criterions_requests_users do |t|
      t.integer :criterion_request_id
      t.integer :user_id
      t.string :value

      t.timestamps
    end
  end
end

