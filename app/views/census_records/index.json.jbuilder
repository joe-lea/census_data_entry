json.array!(@census_records) do |census_record|
  json.extract! census_record, :parish, :street, :house_number, :surname, :forename, :age, :occupation, :industry, :place_of_birth
  json.url census_record_url(census_record, format: :json)
end
