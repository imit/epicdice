
Factory.sequence(:email) {|n| "email#{n}@factory.com"}
Factory.sequence(:name) {|n| "user1#{n}"}

Factory.define :user do |f|
    f.email  { Factory.next :email }
    f.name   { Factory.next :name }
    f.password "foobar"
    f.password_confirmation {|u| u.password}
end


Factory.define :character_class_type do |f|
  f.name "mage"
end

Factory.define :character_class_selection do |f|
  #f.association :character, :factory => :player_character
  f.association :character_class_type, :factory => :character_class_type
end
Factory.define :player_character do |f|
  f.name   { Factory.next :name }
  f.association :user, :factory => :user
  f.association :character_class_selection, :factory => :character_class_selection
end


Factory.define :item_category do |f|
  f.name "weapon"
end

Factory.define :item do |f|
  f.name "weapon1"
  f.association :item_category, :factory => :item_category
end