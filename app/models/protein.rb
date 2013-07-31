#Validation here is optional - checks to make sure title is long enough
class Protein < ActiveRecord::Base
	validates :title, presence: true, length: { minimum: 5 }
end
