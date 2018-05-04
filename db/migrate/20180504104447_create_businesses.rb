class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string  :business_name
      t.integer :user_id
      t.integer :category_id
      t.string  :physical_address
      t.decimal :latitude,              precision: 12,      scale: 4
      t.decimal :longitude,             precision: 12,      scale: 4
      t.string  :phone
      t.string  :email

      t.timestamps
    end
    add_index    :businesses, :user_id
    add_index    :businesses, :category_id
  end
end
