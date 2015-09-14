json.array!(@books) do |book|
  json.extract! book, :id, :title, :isbn, :description, :publisher, :published_on
  json.url book_url(book, format: :json)
end
