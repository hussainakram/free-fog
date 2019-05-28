require 'swagger_helper'

describe 'Users API' do

  path '/api/v1/users' do

    post 'SignUp a user' do
      tags 'Users'
      consumes 'application/json', 'application/xml'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              first_name: { type: :string },
              last_name: { type: :string },
              email: { type: :string },
              password: { type: :string },
              passport_id: { type: :string },
              phone: { type: :string },
              dob: { type: :string }
            }
          }
        },
        required: [ 'email', 'password' ]
      }

      response '201', 'user signed up' do
        let(:user) { { first_name: 'foo', last_name: 'bar', email: 'user@example.com', password: 'password' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:user) { { first_name: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/v1/users/sign_in' do

    post 'SignIn a user' do
      tags 'Users'
      consumes 'application/json', 'application/xml'
      parameter name: :params, in: :body, schema: {
        type: :object,
        properties: {
          user: {
            type: :object,
            properties: {
              email: { type: :string },
              password: { type: :string }
            }
          }
        },
        required: [ 'email', 'password' ]
      }

      response '201', 'user signed up' do
        let(:user) { { first_name: 'foo', last_name: 'bar', email: 'user@example.com', password: 'password' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:user) { { email: 'foo' } }
        run_test!
      end
    end
  end

  path '/api/v1/users/{id}/quotes' do

    get 'Get quotes of a user' do
      tags 'Users'
      produces 'application/json', 'application/xml'
      parameter name: :id, in: :path, type: :integer, description: 'Unique identifier'

      response '201', 'user signed up' do
        schema type: :object,
          properties: {
            id: { type: :integer }
          },
          required: [ 'id' ]
        run_test!
      end

      response '422', 'invalid request' do
        let(:id) { nil }
        run_test!
      end
    end
  end
end
