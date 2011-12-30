class ItemStatModifier
  include Mongoid::Document
  attr_accessible :stat_type,:stat_bonus
  embedded_in :item, :inverse_of => :item_stat_modifiers
  field :stat_type
  field :stat_bonus
  
  
end
