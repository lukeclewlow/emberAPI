class GenreSerializer < ActiveModel::Serializer
	embed :ids, :include => true
  attributes :id, :name
  has_many :tunes
end
