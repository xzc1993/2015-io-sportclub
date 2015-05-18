json.array!(@course_events) do |course_event|
  json.extract! course_event, :id, :title
  json.url course_event_url(course_event, format: :json)
end
