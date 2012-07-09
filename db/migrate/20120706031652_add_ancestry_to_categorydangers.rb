class AddAncestryToCategorydangers < ActiveRecord::Migration
  def change
    add_column :categorydangers, :ancestry, :string
    add_index :categorydangers, :ancestry
  end
end
