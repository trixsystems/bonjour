# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  address       :string
#  name          :string
#  phone_number  :string
#  status        :integer          default(0)
#  total_value   :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :bigint           not null
#
# Indexes
#
#  index_orders_on_restaurant_id  (restaurant_id)
#
# Foreign Keys
#
#  fk_rails_...  (restaurant_id => restaurants.id)
#
class Order < ApplicationRecord
  belongs_to :restaurant
end
