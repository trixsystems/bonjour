# == Schema Information
#
# Table name: restaurants
#
#  id           :bigint           not null, primary key
#  cep          :string
#  city         :string
#  complement   :string
#  delivery_tax :float
#  description  :text
#  latitude     :float
#  longitude    :float
#  name         :string
#  neighborhood :string
#  number       :string
#  reference    :string
#  state        :string
#  status       :integer
#  street       :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  category_id  :bigint           not null
#
# Indexes
#
#  index_restaurants_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#
FactoryBot.define do
  factory :restaurant do
    name { "Faker::Name.name  " }
    description { "Faker::Lorem.paragraph" }
    status { 1 }
    delivery_tax { 1.5 }
    state { "Faker::Subscription.status" }
    city { "Faker::Address.city" }
    street { "Faker::Address.street_name" }
    neighborhood { "Faker::Address.community" }
    number { "Faker::Address.building_number" }
    complement { "Faker::Address.state" }
    reference { "Faker::Address.longitude" }
    cep { "Faker::Address.zip" }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    category { nil }
  end
end
