module Api
  module V1
    class TokensController < Doorkeeper::TokensController
      swagger_controller :tokens, "Tour Management"

      swagger_api :create do
        summary "Creates a new User"
        param :form, :grant_type, :string, :required, "client_credentials"
        param :form, :client_id, :string, :required, "Last name"
        param :form, :client_secret, :string, :required, "Email address"
        response :unauthorized
        response :not_acceptable
      end

    end
  end
end

# curl -i http://api.lvh.me:3000/oauth/token -F grant_type="client_credentials" -F client_id="19a6d7019dc63e0446824eca9bcb0ffd97f734cb83f7c0a40280192befba5b52" -F client_secret="c3454c540acba23499b404de051bca6c38cbd172bb578196b41bd712a9330d59"