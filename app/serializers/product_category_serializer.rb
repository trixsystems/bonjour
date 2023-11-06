class ProductCategorySerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :products

  attributes :id, :title
end
