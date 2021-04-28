class V1::Products < Grape::API
  helpers V1::Helpers
  
  resource :products do
    desc "Get data Product",
      entities: Entities::V1::Product,
      headers: {
        "Accept-Language": {
          description: 'Language for Product', default: 'vi'
        }
      }
    params do
      optional :category_id, type: Integer, desc: 'Category id'
      optional :name, type: String, desc: 'Catagory name'
    end  
    get do
      product = if declared_params.present?
                  Product.where(category_id: declared_params["category_id"])
                else
                  Product.all
                end
      result = pagination_values product
      status 200
      present result[:pagination], with: Entities::V1::Pagination
      present result[:data], with: Entities::V1::Product
    end
  end 
end
