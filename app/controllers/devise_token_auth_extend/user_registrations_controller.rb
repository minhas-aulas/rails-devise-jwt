module DeviseTokenAuthExtend
    class UserRegistrationsController < DeviseTokenAuth::RegistrationsController
  
        def sign_up_params
            params.permit(:email, :password, :cpf, :name)
        end
        
        def account_update_params
            params.permit(:email, :password, :cpf, :name)
        end

        def resource_data(opts = {})
            opts[:resource_json] || @resource.as_json
        end
    end
end