json.extract! order, :id, :orderDate, :requiredDate, :shippedDate, :status, :comments, :customerNumber, :created_at, :updated_at
json.url order_url(order, format: :json)
