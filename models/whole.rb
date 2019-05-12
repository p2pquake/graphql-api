require 'mongoid'

class Whole
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "whole"

  # 555: areapeer
  field :areas, type: Array

  # 561: userquake
  field :area, type: Integer
end
