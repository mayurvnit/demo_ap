json.array!(@homes) do |home|
  json.extract! home, :name, :item, :amount
  json.url home_url(home, format: :json)
end