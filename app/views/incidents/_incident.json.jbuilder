json.extract! incident, :id, :title, :content, :priority, :resolution, :solved, :created_at, :updated_at
json.url incident_url(incident, format: :json)
