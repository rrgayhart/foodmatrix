class Fat < ActiveRecord::Base
	has_many :fat_preps, dependent: :destroy
	has_many :preps, through: :fat_preps
end
