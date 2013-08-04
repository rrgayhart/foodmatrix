class Spice < ActiveRecord::Base
	has_many :marinades, dependent: :destroy
end
