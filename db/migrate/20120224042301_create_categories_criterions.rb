class CreateCategoriesCriterions < ActiveRecord::Migration
    create_table "categories_criterions", :id => false, :force => true do |t|
      t.integer "category_id"
      t.integer "criterion_id"
    end

    add_index "categories_criterions", ["category_id"], :name => "index_categories_criterions_on_categories_id"
    add_index "categories_criterions", ["criterion_id"], :name => "index_categories_criterions_on_criterion_id"
end

