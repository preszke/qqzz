json.array!(@lesson_takens) do |lesson_taken|
  json.extract! lesson_taken, :id, :lesson_id, :user_id
  json.url lesson_taken_url(lesson_taken, format: :json)
end
