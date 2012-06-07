class Reservation < ActiveRecord::Base
  attr_accessible :date, :user_id, :beam_target_id
  belongs_to :user
  belongs_to :beam_target

  validates_presence_of :user,
    message: 'Benutzer ist nicht vorhanden'			
  validates_presence_of :beam_target, 
    message: 'BeamTarget ist nicht vorhanden'  
  validates_presence_of :date
  validates_uniqueness_of :date,
    scope: :beam_target_id,
    message: 'Ist bereits gebucht'
end
