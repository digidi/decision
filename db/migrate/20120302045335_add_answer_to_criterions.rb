class AddAnswerToCriterions < ActiveRecord::Migration
  def self.up
    add_column :criterions, :answer, :string
  end

  def self.down
    remove_column :criterions, :answer
  end
end
