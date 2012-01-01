class Character
  include Mongoid::Document
  field :name
  field :bio
  field :stamina, :type => Integer, :default => 0
  field :strength, :type => Integer, :default => 0
  field :intellect, :type => Integer, :default => 0
  field :agility, :type => Integer, :default => 0
  field :spirit, :type => Integer, :default => 0
  field :armor, :type => Integer, :default => 0
  field :crit_chance, :type => Float, :default => 1
  field :user_id
  has_one :character_class_selection
  has_one :inventory
  validates :name, :presence => true
  after_validation :create_inventory

  
  def hp
    self.health_points
  end
  def health_points 
    (self.stamina / self.character_class.stamina_modifier).round
  end
  
  def physical_damage
    (self.strength / self.character_class.strength_modifier).round
  end
  
  def magical_damage
    (self.intellect / self.character_class.intellect_modifier).round
  end
  
  def magical_defense
    (self.spirit / self.character_class.spirit_modifier).round
  end
  
  def physical_defense
    (self.armor / self.character_class.armor_modifier).round
  end
  
  def attack_rate 
    (self.agility / self.character_class.agility_modifier).round / 2
  end
  
  def total_crit_chance
    (self.crit_chance / self.character_class.crit_chance_modifier) * 10
  end
  
  def character_class
    self.character_class_selection.character_class_type if self.character_class_selection
  end
  
  def character_class_name
    self.character_class.name if self.character_class_selection
  end
  
  private
  def create_inventory
    self.inventory = Inventory.create(:character => self)
    self.inventory.save
  end

end