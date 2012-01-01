class Inventory
  include Mongoid::Document
  
  belongs_to :character
  has_many :item_references
  validates :character, :presence => true
end
