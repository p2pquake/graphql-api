require 'sinatra'
require 'sinatra/json'
# require_relative 'graphql/app_schema'

require 'rack/contrib'
use Rack::PostBodyContentTypeParser

require 'mongoid'

Mongoid.load!('./config/mongoid.yml')

post '/graphql' do
  content_type :json
  puts params[:query]
  # result = AppSchema.execute(
  #   params[:query],
  #   variables: params[:variables]
  # )
  result = { test: 1 }
  json result
end
