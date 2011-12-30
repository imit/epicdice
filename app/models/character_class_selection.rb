class CharacterClassSelection
  include Mongoid::Document
  belongs_to :character
  belongs_to :character_class_type
  
  
  def self.select_class(charClassName,player)
    
    cs = CharacterClassSelection.new
    cs.character = player
    cs.character_class_type = CharacterClassType.where(:name => charClassName).first
    if cs.save
      cs
    else
      false
    end
  end
 
end
