class ItemReference
  include Mongoid::Document
  
  belongs_to :map_point
  belongs_to :inventory
  belongs_to :item
  
end
