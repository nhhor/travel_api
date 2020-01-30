# spec/integration/destinations_spec.rb
require 'swagger_helper'

describe 'Destinations API' do

  path '/destinations' do

    post 'Creates a destination' do
      tags 'Destinations'
      consumes 'application/json', 'application/xml'
      parameter name: :destination, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          country: { type: :string },
          city: { type: :string }
        },
        required: [ 'name', 'country', 'city' ]
      }

      response '201', 'destination created' do
        let(:destination) { { name: 'Dodo', country: 'USA', city: 'Portland' } }
        run_test!
      end

      response '422', 'invalid request' do
        let(:destination) { { name: 'foo' } }
        run_test!
      end
    end
  end

  path '/destinations/{id}' do

    get 'Retrieves a destination' do
      tags 'Destinations'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'name found' do
        schema type: :object,
          properties: {
            id: { type: :integer, },
            name: { type: :string },
            country: { type: :string },
            city: { type: :string }
          },
          required: [ 'id', 'name', 'country', 'city' ]

        let(:id) { Destination.create(name: 'foo', country: 'USA', city: 'Portland').id }
        run_test!
      end

      response '404', 'destination not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end
end
