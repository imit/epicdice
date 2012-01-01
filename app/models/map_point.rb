class MapPoint
  include Mongoid::Document
  include Geocoder::Model::Mongoid
  
  field :coordinates, :type => Array
  field :address
  reverse_geocoded_by :coordinates
  after_validation :reverse_geocode, :if => :address_changed?
  
  has_many :item_references
end
