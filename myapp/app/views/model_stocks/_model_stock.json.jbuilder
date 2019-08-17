json.extract! model_stock, :id, :name, :desc, :status, :group1, :group2, :group3, :scale, :provider, :remark1, :remark2, :remark3, :remark4, :remark5, :created_at, :updated_at
json.url model_stock_url(model_stock, format: :json)
