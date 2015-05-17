json.array!(@event_days) do |event_day|
  json.extract! event_day, :id, :event, :date, :time_begin, :time_end
  json.url event_day_url(event_day, format: :json)
end
