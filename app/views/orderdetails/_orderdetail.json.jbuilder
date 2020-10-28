json.extract! orderdetail, :id, :orderNumber, :productCode, :quantityOrdered, :priceEach, :orderLineNumber, :created_at, :updated_at
json.url orderdetail_url(orderdetail, format: :json)
