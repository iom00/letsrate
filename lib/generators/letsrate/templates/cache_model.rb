class RatingCache < Mongoid::Document
  include Mongoid::Timestamps
  
  belongs_to :cacheable, :polymorphic => true

  field :dimension, type: String
  field :avg, type: Float, :null => false
  field :qty, type: Integer, :null => false
  
  
end
