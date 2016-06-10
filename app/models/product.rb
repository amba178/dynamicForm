class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :product_type 
  serialize :properties, Hash 
  # accepts_nested_attributes_for :product_types :allow_destroy => true 
  validate :validate_propeties

  def validate_propeties
  	product_type.fields.each do |field|

  		if field.required? && properties[field.name].blank?
  			self.errors.add field.name, "must not be blank"
  		end
  	end
  end
end
