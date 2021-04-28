class V1::Categories < Grape::API
  resource :categories do
    desc "Get data category", 
      entities: Entities::V1::Category,
      headers: {
        "Accept-Language": {
          description: "Language for Category", default: 'vi'
        }
      }
    get do
      categories = Category.all
      result = pagination_values categories
      status 200
      present result[:pagination], with: Entities::V1::Pagination
      present result[:data], with: Entities::V1::Pagination
    end 
  end
end
