module Api
  module V1
    class ToursController < Api::V1::ApiController
      skip_before_action :check_json_request, :authenticate_user!

      def create
        user = User.find_by_id params[:user_id]

        if user.present?
          ActiveRecord::Base.transaction do
            tour = user.tours.create(tour_params)

            render json: tour.search_quote(params[:radius])
          end
        else
          render json: { error: I18n.t('api.errors.not_found') }, status: :not_found
        end
      end

      private

      def tour_params
        params.require(:tour).permit(:name, :latitude, :longitude)
      end
    end
  end
end
