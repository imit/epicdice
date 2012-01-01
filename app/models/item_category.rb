class ItemCategory
  include Mongoid::Document
  
  field :name
  has_many :items
end
