class CensusRecord < ActiveRecord::Base
  belongs_to :relationship_status
  belongs_to :parish

  validates :surname, presence: true
  validates :forename, presence: true
  validates :position_in_household, presence: true
  validates :relationship_status_id, presence: true
  validates :house_number, presence: true
  validates :street, presence: true
  validates :age, presence: true
  validates :occupation, presence: true
  validates :industry, presence: true
  validates :place_of_birth, presence: true
end
