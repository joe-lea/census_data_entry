class Person < ActiveRecord::Base
  belongs_to :relationship_status 
  has_many :children
end
