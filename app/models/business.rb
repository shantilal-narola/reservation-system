class Business < ApplicationRecord
  #
  ##Associations
  #
  belongs_to :user

  belongs_to :category
end
