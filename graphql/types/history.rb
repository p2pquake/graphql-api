require_relative 'base_enum'
require_relative 'code'

module Types
  class History < GraphQL::Schema::Object
    field :time, String, null: false
    field :code, Types::Code, null: false
  end
end
