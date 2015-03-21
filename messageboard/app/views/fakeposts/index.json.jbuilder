json.array!(@fakeposts) do |fakepost|
  json.extract! fakepost, :id, :title, :content
  json.url fakepost_url(fakepost, format: :json)
end
