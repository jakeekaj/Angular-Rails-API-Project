class ReviewsSerializer < ActiveModel::Serializer
  attributes :id, :body
  has_one :movie
end
