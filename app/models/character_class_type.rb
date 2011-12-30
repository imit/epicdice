class CharacterClassType
  include Mongoid::Document
  field :name, :type => String
  field :description, :type => String
  has_many :character_class_selections
  # => Basic Attribute Values
  field :stamina_modifier, :type => Float, :default => 0
  field :strength_modifier, :type => Float, :default => 0
  field :intellect_modifier, :type => Float, :default => 0
  field :agility_modifier, :type => Float, :default => 0
  field :spirit_modifier, :type => Float, :default => 0
  field :armor_modifier, :type => Float, :default => 0
  field :crit_chance_modifier, :type => Float, :default => 0
  
end
