require 'mongoid'

class Whole
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  store_in collection: "whole"
end
