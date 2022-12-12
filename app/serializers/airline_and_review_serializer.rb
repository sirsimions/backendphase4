class AirlineAndReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :reviews
  has_many :reviews
end
