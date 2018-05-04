class User < ApplicationRecord
   #
   ##Associations
   #
   has_many(
     :businesses,
     dependent: :destroy
   )

   devise(
    :confirmable,
    :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    :validatable
  )
end
