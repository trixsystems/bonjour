# == Schema Information
#
# Table name: order_products
#
#  id         :bigint           not null, primary key
#  comment    :text
#  quantity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :bigint           not null
#  product_id :bigint           not null
#
# Indexes
#
#  index_order_products_on_order_id    (order_id)
#  index_order_products_on_product_id  (product_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#  fk_rails_...  (product_id => products.id)
#
FactoryBot.define do
  factory :order_product do
    quantity { 1 }
    comment { "MyText" }
    order { nil }
    product { nil }
  end
end
