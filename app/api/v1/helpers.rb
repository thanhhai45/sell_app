module V1::Helpers
  extend Grape::API::Helpers

  def logger
    Base.logger
  end

  def set_locale
    'vi'
  end

  def declared_params
    @declared_params ||= ActionController::Parameters.new(declared(params, include_missing: false)).permit!
  end
end
