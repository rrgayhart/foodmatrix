class Vegetable < ActiveRecord::Base
	has_many :vegetable_preps, dependent: :destroy
	has_many :preps, through: :vegetable_preps
end
