class MoviesSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot
  has_many :reviews
end
