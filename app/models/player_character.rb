class PlayerCharacter < Character
  #     field :name
  #     field :bio
  #     field :stamina, :type => Integer, :default => 0
  #     field :strength, :type => Integer, :default => 0
  #     field :intellect, :type => Integer, :default => 0
  #     field :agility, :type => Integer, :default => 0
  #     field :spirit, :type => Integer, :default => 0
  #     field :armor, :type => Integer, :default => 0
  #     field :crit_chance, :type => Float, :default => 1
  #     field :user_id
  #     has_one :character_class_selection
  #     has_one :inventory
  #     validates :name, :presence => true
  #     after_validation :create_inventory
  
  
   belongs_to :user
   
   validates :name, :presence => true, :uniqueness => true
   
   validates :user, :presence => true
   
   
   def self.new_player_character(params_character, param_class_name,user)
     pc = PlayerCharacter.new(params_character)
     pc.character_class_selection = CharacterClassSelection.select_class(param_class_name,pc)
     pc.user = user
     pc
   end
 
end
