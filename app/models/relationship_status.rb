class RelationshipStatus < ActiveRecord::Base
  has_many :people
end
