json.array!(@phbooks) do |phbook|
  json.extract! phbook, :id, :name, :phone, :note, :User_id
  json.url phbook_url(phbook, format: :json)
end
