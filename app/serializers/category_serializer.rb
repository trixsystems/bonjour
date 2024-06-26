class CategorySerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url

  def image_url
    rails_blog_url(object.image)
  end
end
