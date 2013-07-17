class CensusRecord < ActiveRecord::Base
  belongs_to :relationship_status
  belongs_to :parish
end
