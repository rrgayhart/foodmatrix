class ProteinPrep < ActiveRecord::Base
	belongs_to :prep
	belongs_to :protein
end
