json.array!(@people) do |person|
  json.extract! person, :surname, :forename, :age, :house_number, :street, :occupation, :industry, :place_of_birth, :position_in_household, :relationship_status_id
  json.url person_url(person, format: :json)
end
