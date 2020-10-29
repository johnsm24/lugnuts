class Orderdetail < ApplicationRecord
    self.primary_keys = :orderNumber, :productCode
end
