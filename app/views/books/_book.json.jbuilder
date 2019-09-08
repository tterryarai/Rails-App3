json.extract! book, :id, :name, :desc, :status, :group1, :group2, :group3, :author, :provider, :remark1, :remark2, :remark3, :remark4, :remark5, :created_at, :updated_at
json.url book_url(book, format: :json)
