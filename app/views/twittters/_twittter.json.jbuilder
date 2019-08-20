json.extract! twittter, :id, :content, :created_at, :updated_at
json.url twittter_url(twittter, format: :json)
