require 'swagger_helper'

describe 'Triggers API' do

  path '/api/v1/tours' do

    post 'Send a tour' do
      tags 'Triggers'
      consumes 'application/json', 'application/xml'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          user_id: {type: :integer},
          tour: {
            type: :object,
            properties: {
              name: { type: :string },
              latitude: { type: :number },
              longitude: { type: :number }
            }
          }
        },
        required: [ 'latitude', 'longitude' ]
      }

      response '200', 'tour created' do
        let(:tour) { Tour.create(name: "sample", latitude: 53.3213212, longitude: 25.312343) }
        run_test!
      end

      response '422', 'invalid request' do
        let(:tour) { Tour.create(name: "wrong") }
        run_test!
      end

      response '404', 'user not found' do
        let(:tour) { Tour.create(name: "wrong") }
        run_test!
      end
    end
  end
end
