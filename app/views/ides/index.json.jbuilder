json.array!(@ides) do |ide|
  json.extract! ide, :id, :name, :string, :description, :picture, :string
  json.url ide_url(ide, format: :json)
end
