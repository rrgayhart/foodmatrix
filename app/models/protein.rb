#Validation here is optional - checks to make sure title is long enough
class Protein < ActiveRecord::Base
	has_many :protein_preps, dependent: :destroy
	has_many :preps, through: :protein_preps
	validates :title, presence: true
end
