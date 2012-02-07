class CreateCriterions < ActiveRecord::Migration
  def change
    create_table :criterions do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
