class Snack< ActiveRecord::Base
	has_many :snack_preps, dependent: :destroy
	has_many :preps, through: :snack_preps
end