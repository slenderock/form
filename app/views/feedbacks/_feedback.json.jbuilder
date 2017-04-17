json.extract! feedback, :id, :age, :name, :file, :description, :created_at, :updated_at
json.url feedback_url(feedback, format: :json)
