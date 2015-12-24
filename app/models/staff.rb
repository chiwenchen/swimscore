class Staff < ActiveRecord::Base
  
  has_many :events, through: :assign_events
  has_many :assign_events
  belongs_to :team
  has_many :tracks

end