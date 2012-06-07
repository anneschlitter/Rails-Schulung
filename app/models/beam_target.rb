class BeamTarget < ActiveRecord::Base
  attr_accessible :density, :volume
  validates_presence_of :density 
  scope:small, where("volume < 20")
  scope:light, where("density < 2")
end
