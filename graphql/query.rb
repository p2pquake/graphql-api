require_relative 'types/history'
require_relative '../models/whole'

class QueryType < GraphQL::Schema::Object
  description 'The query root of this schema'

  field :histories, [Types::History], null: true do
    description 'Response historical data of P2PQuake'
  end

  def histories
    Whole.limit(100)
  end
end

