class Tune < ActiveRecord::Base
	validates :artist, :title, :link, :blog, :genre_id, presence: true
	validates :link, uniqueness: true
	belongs_to :genre
end
