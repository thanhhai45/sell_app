class V1::Customers < Grape::API
  helpers V1::Helpers

  resource :customers do
    desc "Register Customer",
      entities: Entities::V1::Customer,
      headers: {
        "Accept-Language": {
          description: "Language for Customer", default: 'vi' 
        }
      }
    
    params do
      requires :email, type: String, desc: 'Email of Customer'
      optional :first_name, type: String, desc: 'First name of Customer'
      optional :last_name, type: String, desc: 'Last name of Customer'
      requires :phone, type: String, desc: 'Phone of Customer'
      optional :address, type: String, desc: 'Address of Customer'
      optional :birthday, type: String, desc: 'Birth day of Customer'
      optional :password, type: String, desc: 'Password of Customer'
      optional :password_confirmation, type: String, desc: 'Password confirmation'
      optional :access_token, type: String, desc: "Customer's Facebook/Google access token"
      given :access_token do
        requires :provider, type: String, desc: 'Facebook/Google access provider', values: %w[facebook google]
      end
    end
    post :sign_up do
      customer = Customer.create! declared_params
      if customer.errors.any?
        raise ActiveRecord::RecordInvalid, customer
      else
        status 200
        extra_infos = {
          messages: "Successfully Register"
        }
      end
      present extra_infos
      present customer, with: Entities::V1::Customer
    end


    desc "Login Customer",
      entities: Entities::V1::Customer,
      headers: {
        "Accept-Language": {
          description: "Language for Customer", default: 'vi' 
        }
      }
    
    params do
      requires :email, type: String, desc: "Email of Customer"
      requires :password, type: String, desc: "Password of Customer"
    end
    post :sign_in do
      customer = Customer.find_by_email(declared_params["email"])
      if customer.present? && customer.valid_password?(declared_params["password"])
        status 200
        extra_infos = {
          messages: "Successfully Login"
        }
      else
        raise ActiveRecord::RecordInvalid, customer
      end
      present extra_infos
      present customer, with: Entities::V1::Customer
    end
  end

end
