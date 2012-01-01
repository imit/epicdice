class Item
  include Mongoid::Document
  field :name
  field :description
  field :item_type, :type => Integer, :default => 0
  field :stamina_modifier, :type => Integer, :default => 0
  field :strength_modifier, :type => Integer, :default => 0
  field :intellect_modifier, :type => Integer, :default => 0
  field :agility_modifier, :type => Integer, :default => 0
  field :spirit_modifier, :type => Integer, :default => 0
  field :armor_modifier, :type => Integer, :default => 0
  field :crit_chance_modifier, :type => Float, :default => 0
  
  validates :name,:presence => true
  validates :stamina_modifier,:numericality => true
  validates :strength_modifier,:numericality => true
  validates :intellect_modifier,:numericality => true
  validates :agility_modifier,:numericality => true
  validates :spirit_modifier,:numericality => true
  validates :armor_modifier,:numericality => true
  validates :crit_chance_modifier,:numericality => true
  belongs_to :item_category
  
  ITEM_TYPES = [["misc", 0], ["usable", 1], ["resource",2], ["dependency",3], ["equipment",4]]
  
  def item_type_readable
    ITEM_TYPES[self.item_type][0]
  end
  
end
