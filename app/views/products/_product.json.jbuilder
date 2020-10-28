json.extract! product, :id, :productName, :productLine, :productScale, :productVendor, :productDescription, :quantityInStock, :buyPrice, :MSRP, :created_at, :updated_at
json.url product_url(product, format: :json)
