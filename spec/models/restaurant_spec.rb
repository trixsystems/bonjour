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
require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  it 'is valid' do
    category = Category.create!(title: 'comida')
    restaurant = Restaurant.create!(:name => "Hemershon Silva", category: category)
    expect(restaurant).to be_valid
  end

  it 'is not valid' do
    restaurant = Restaurant.new(name: "Hemershon Silva")
    expect(restaurant).not_to be_valid
  end
end
