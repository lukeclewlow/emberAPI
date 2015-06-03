class Genre < ActiveRecord::Base
	validates :name, uniqueness: true
	has_many :tunes
end
