class ProductField < ActiveRecord::Base
  belongs_to :product_type
  TYPE_FIELD = ['text_field', 'check_box']
  # validates_inclusion_of :field_type, :in => TYPE_FIELD, 
  # :message => "must be one of: #{TYPE_FIELD.join(', ')}"
end
