class Gl < ActiveRecord::Base
	belongs_to :user
	has_many :grocery_lists
end
