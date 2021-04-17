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
      status 200
      present categories, with: Entities::V1::Category
    end 
  end
end
