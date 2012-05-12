class CreateAftermaths < ActiveRecord::Migration
  def change
    create_table :aftermaths do |t|
      t.text :aftermath
      t.integer :danger_id

      t.timestamps
    end
  end
end
