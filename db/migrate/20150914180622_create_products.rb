class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.boolean :discontinued, default: false, null: false 
      # t.belongs_to :product_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
