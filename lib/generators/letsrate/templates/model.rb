class Rate < Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :rater, :class_name => "<%= file_name.classify %>", index: true 
  belongs_to :rateable, :polymorphic => true
  
  field :dimension, type: String
  field :stars, type: Float, :null => false


  #attr_accessible :rate, :dimension

end
