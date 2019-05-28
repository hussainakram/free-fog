module Api
  module V1
    class QuotesController < Api::V1::ApiController
      def show
        @quote = Quote.find(params[:id])
      end

    end
  end
end
