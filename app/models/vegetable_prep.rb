class VegetablePrep < ActiveRecord::Base
	belongs_to :prep
	belongs_to :vegetable
end