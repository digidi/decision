class AddColumsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :fio, :string
    add_column :users, :description, :text
  end

end
