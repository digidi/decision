class FixTableAftermath < ActiveRecord::Migration
  def change
    rename_column :aftermaths, :danger_id, :danger_request_user_id
  end
end
