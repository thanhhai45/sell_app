class V1::Base < Grape::API
  
  prefix 'api'
  format :json
  version 'v1'

  mount V1::Demos
  mount V1::Categories
  mount V1::Products
  mount V1::Customers
  add_swagger_documentation(api_version: self.version, hide_format: true, hide_documentation_path: true)

end
