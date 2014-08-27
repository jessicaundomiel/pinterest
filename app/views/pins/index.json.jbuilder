json.array!(@pins) do |pin|
  json.extract! pin, :id, :name, :image, :board_id, :user_id
  json.url pin_url(pin, format: :json)
end
