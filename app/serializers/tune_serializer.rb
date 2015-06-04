class TuneSerializer < ActiveModel::Serializer
  attributes :id, :artist, :title, :link, :blog, :genre_id
  # has_one :genre
end
