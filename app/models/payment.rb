class Payment < ApplicationRecord
   self.primary_keys = :customerNumber, :checkNumber
end
