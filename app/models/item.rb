class Item
  include Mongoid::Document
  embeds_many :item_stat_modifiers
  field :name
  field :description
  field :item_type, :type => Integer, :default => 0
  accepts_nested_attributes_for :item_stat_modifiers
  ITEM_TYPES = [["misc", 0], ["usable", 1], ["resource",2], ["dependency",3], ["equipment",4]]
  
end
