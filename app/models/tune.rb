class Tune < ActiveRecord::Base
	validates :artist, :title, :link, :blog, presence: true
	validates :link, uniqueness: true
end
