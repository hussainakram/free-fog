module Api
  module V1
    class UsersController < Api::V1::ApiController
      skip_before_action :check_json_request, :authenticate_user!
      def show; end

      def profile
        render :show
      end

      def update
        current_user.update!(user_params)
        render :show
      end

      def quotes
        user = User.find_by_id(params[:id])

        raise NotFound.new('User not found!') if user.nil?

        render json: user.quotes
      end

      private

      def user_params
        params.require(:user).permit(:username, :first_name, :last_name, :email)
      end
    end
  end
end
