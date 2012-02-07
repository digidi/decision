class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :criterion_id
      t.string :level

      t.timestamps
    end
  end
end
