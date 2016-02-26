class Api::V1::Overrides::TokenValidationsController < DeviseTokenAuth::TokenValidationsController
  skip_before_filter :assert_is_devise_resource!, :only => [:validate_token]
  before_filter :set_user_by_token, :only => [:validate_token]

  def validate_token
    # @resource will have been set by set_user_token concern
    if @resource
      render json: {
        success: true,
        data: UserDetailsSerializer.new(@resource, {root: false})
      }
    else
      render json: {
        success: false,
        errors: ["Invalid login credentials"]
      }, status: 401
    end
  end
end