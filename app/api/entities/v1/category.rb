class Entities::V1::Category < Entities::V1::Base
  root 'data', 'object'

  expose :id, documentation: { type: 'Integer', desc: 'Id of Category' }
  expose :name, documentation: { type: 'String', desc: 'Name Category' }
  expose :description, documentation: { type: 'String', desc: 'Description Catagory' }  
  expose :is_publish, documentation: { type: 'Integer', desc: 'Active of Category' }
end
