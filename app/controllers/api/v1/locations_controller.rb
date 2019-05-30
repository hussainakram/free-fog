module Api
  module V1
    class LocationsController < Api::V1::ApiController
      skip_before_action :check_json_request, :authenticate_user!

      def index
        render json: WhitelistedLocation.all
      end

      def create
        render json: WhitelistedLocation.create(location_params)
      end

      private

      def location_params
        params.require(:location).permit(:name, :latitude, :longitude)
      end
    end
  end
end
