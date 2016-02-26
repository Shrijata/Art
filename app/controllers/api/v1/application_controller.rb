class Api::V1::ApplicationController < ApplicationController
  #before_action :authenticate_user!
def serializer_responder(resource, config={})
    render json: ResponseBuilder::Main.new(resource, config, params).response
end

end



