json.extract! employee, :id, :lastName, :firstName, :extension, :email, :officeCode, :reportsTo, :jobTitle, :created_at, :updated_at
json.url employee_url(employee, format: :json)
