require 'swagger_helper'

describe 'Locations API' do

  path '/api/v1/locations' do

    get 'Get all whitelisted locations' do
      tags 'Locations'
      consumes 'application/json', 'application/xml'

      response '201', 'tour created' do
        let(:whitelisted_location) { WhitelistedLocation.create(name: "sample", latitude: 53.3213212, longitude: 25.312343) }
        run_test!
      end

      response '422', 'invalid request' do
        let(:whitelisted_location) { WhitelistedLocation.create(name: "sample")}
        run_test!
      end
    end
  end

  path '/api/v1/locations' do

    post 'Create WhiteListed Location' do
      tags 'Locations'
      consumes 'application/json', 'application/xml'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          location: {
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

      response '201', 'tour created' do
        let(:whitelisted_location) { WhitelistedLocation.create(name: "sample", latitude: 53.3213212, longitude: 25.312343) }
        run_test!
      end

      response '422', 'invalid request' do
        let(:whitelisted_location) { WhitelistedLocation.create(name: "sample")}
        run_test!
      end
    end
  end
end
