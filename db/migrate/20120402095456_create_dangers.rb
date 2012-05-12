class CreateDangers < ActiveRecord::Migration
  def change
    create_table :dangers do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
