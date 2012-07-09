class CreateCategorydangers < ActiveRecord::Migration
  def change
    create_table :categorydangers do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
