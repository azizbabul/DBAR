json.array!(@books) do |book|
  json.extract! book, :id, :sr_no, :name, :copy, :images
  json.url book_url(book, format: :json)
end
