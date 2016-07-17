json.array!(@albums) do |album|
  json.extract! album, :id, :title, :image, :user_id
  json.url album_url(album, format: :json)
end
