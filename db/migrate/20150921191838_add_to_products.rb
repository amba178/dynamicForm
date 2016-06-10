class AddToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :product_type_id, :text 
  	add_column :products, :properties, :text 
  end
end
