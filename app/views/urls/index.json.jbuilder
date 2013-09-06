json.array!(@urls) do |url|
  json.extract! url, :shorturl, :longurl
  json.url url_url(url, format: :json)
end
