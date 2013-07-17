json.array!(@children) do |child|
  json.extract! child, :surname, :forename, :age, :gender, :in_school, :in_work, :parent_id
  json.url child_url(child, format: :json)
end
