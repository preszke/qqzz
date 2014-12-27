json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :user_id, :title, :description
  json.url lesson_url(lesson, format: :json)
end
