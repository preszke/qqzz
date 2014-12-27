json.array!(@question_takens) do |question_taken|
  json.extract! question_taken, :id, :question_id, :user_id, :attempts
  json.url question_taken_url(question_taken, format: :json)
end
