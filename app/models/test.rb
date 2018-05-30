class Test < ApplicationRecord
  has_many_attached :uploads # one-to-many relationship
end
