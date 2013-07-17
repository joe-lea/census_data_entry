json.array!(@relationship_statuses) do |relationship_status|
  json.extract! relationship_status, :description
  json.url relationship_status_url(relationship_status, format: :json)
end
