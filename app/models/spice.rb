class Spice < ActiveRecord::Base
	has_many :spice_preps, dependent: :destroy
	has_many :preps, through: :spice_preps
end
