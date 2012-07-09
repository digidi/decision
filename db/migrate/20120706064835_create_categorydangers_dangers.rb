class CreateCategorydangersDangers < ActiveRecord::Migration
   create_table "categorydangers_dangers", :id => false, :force => true do |t|
      t.integer "categorydanger_id"
      t.integer "danger_id"
    end

    add_index "categorydangers_dangers", ["categorydanger_id"], :name => "index_categorydangers_dangers_on_categorydangers_id"
    add_index "categorydangers_dangers", ["danger_id"], :name => "index_categorydangers_dangers_on_danger_id"
end
