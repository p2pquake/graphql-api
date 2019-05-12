require_relative 'base_enum'
require_relative 'code'

module Types
  class AreaPeer < GraphQL::Schema::Object
    field :id, Integer, null: false
    field :peer, Integer, null: false
  end

  class History < GraphQL::Schema::Object
    field :time, String, null: false
    field :code, Types::Code, null: false

    field :areas, [Types::AreaPeer], null: true
    field :area, Integer, null: true
  end
end
