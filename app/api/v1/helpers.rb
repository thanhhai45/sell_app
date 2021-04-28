module V1::Helpers
  extend Grape::API::Helpers
  include Pagy::Backend
  
  def logger
    Base.logger
  end

  def set_locale
    'vi'
  end

  def declared_params
    @declared_params ||= ActionController::Parameters.new(declared(params, include_missing: false)).permit!
  end

  def pagination_values(collection)
    pagy, data = pagy collection
    {
      data: data,
      pagination: pagy
    }
  end

  params :pagination do
    optional :page, type: Integer, desc: "Page number!"
  end

  params :only do
    optional :only, type: Array, desc: "You should get something you need"
  end
end
