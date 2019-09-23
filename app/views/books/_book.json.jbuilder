json.extract! book, :id, :title, :author_name, :description, :image_url, :price, :created_at, :updated_at
json.url book_url(book, format: :json)
