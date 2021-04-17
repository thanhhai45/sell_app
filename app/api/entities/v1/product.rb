class Entities::V1::Product < Entities::V1::Base
  root 'data', 'object'

  expose :id, documentation: { type: 'Integer', desc: 'ID of product' }
  expose :name, documentation: { type: 'String', desc: 'Name of product' }
  expose :amount, documentation: { type: 'Float', desc: 'Amount of product' }
  expose :price, documentation: { type: 'Float', desc: 'Price of product' }
  expose :original_price, documentation: { type: 'Float', desc: 'Original Price of product' }
  expose :category_id, documentation: { type: 'Integer', desc: 'Category ID of product' }
  expose :status, documentation: { type: 'Integer', desc: 'Status of product' }
  expose :supplier, documentation: { type: 'String', desc: 'Supplier of Product' }
end
