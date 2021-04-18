Rails.application.routes.draw do
  devise_for :customers
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # mount GrapeSwaggerRails::Enginer => '/swaggers' unless Rails.env.production?

  mount Root, at: '/'
end
