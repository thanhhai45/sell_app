class Entities::V1::Customer < Entities::V1::Base
  root 'data', 'object'

  expose :id, documentation: { type: Integer, desc: 'ID of Customer' }
  expose :email, documentation: { type: String, desc: 'Email of Customer'}
  expose :first_name, documentation: { type: String, desc: 'First name of Customer'}
  expose :last_name, documentation: { type: String, desc: 'Last name of Customer'}
  expose :phone, documentation: { type: String, desc: 'phone of Customer'}
  expose :address, documentation: { type: String, desc: 'address of Customer'}
  expose :birthday, documentation: { type: String, desc: 'birthday of Customer'}
end
