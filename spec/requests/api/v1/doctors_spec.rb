require 'swagger_helper'

RSpec.describe 'api/v1/doctors', type: :request do
  path '/api/v1/doctors' do
    get('list doctors') do
        tags 'All Doctors'
      response(200, 'All doctors loaded successfully!') do
        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create doctor') do
        tags 'Create Doctor'
      response(201, 'Doctor created successfully!') do
        consumes 'application/json'
        parameter name: :user, in: :body, schema: {
          type: :object,
          properties: {
            name: { type: :string },
            fee: { type: :integer },
            image: { type: :string },
            speciality: { type: :string }
          },
          required: %w[name fee image speciality]
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/api/v1/doctors/{id}' do
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show doctor') do
        tags 'Show Doctor'
      response(200, 'Doctor loaded successfully!') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete doctor') do
        tags 'Delete Doctor'
      response(200, 'Doctor deleted successfully') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
