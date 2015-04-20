json.array!(@course_days) do |course_day|
  json.extract! course_day, :id, :course, :date, :time_begin, :time_end
  json.url course_day_url(course_day, format: :json)
end
