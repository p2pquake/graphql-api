require 'mongoid'

class Whole
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "whole"

  field :areas, type: Array
end
