class Category < ApplicationRecord
  #
  ##Associations
  #
  has_many(
    :businesses,
    dependent: :destroy
  )
end
