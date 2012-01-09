class Inventory
  include Mongoid::Document
  
  belongs_to :character
  has_many :item_references
  validates :character, :presence => true
  
  def items
    self.item_references
  end
  
  def take_item(item)
    item_reference = ItemReference.create(:inventory => self, :item => item)
  end
  
  def find_in_inventory(item)
    #item_reference =     
  end
  
  def drop_item(item)
    #if true
    #  #item_reference.destroy
    #else
    #  return false
    #end
    #item_reference = self.item_references.where(:item => item)
      
  end
  
  def equip(item)
    
  end
  
  
  def find_item(item)
    self.item_references.where(:item => item)
  end
  
end
