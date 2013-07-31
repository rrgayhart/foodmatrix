#Validation here is optional - checks to make sure title is long enough
class Protein < ActiveRecord::Base
	has_many :preps
	validates :title, presence: true, length: { minimum: 5 }
end
