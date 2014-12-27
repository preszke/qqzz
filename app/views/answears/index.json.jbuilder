json.array!(@answears) do |answear|
  json.extract! answear, :id, :is_correct, :text, :question_id
  json.url answear_url(answear, format: :json)
end
