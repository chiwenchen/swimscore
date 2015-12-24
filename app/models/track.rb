class Track < ActiveRecord::Base

  belongs_to :event
  belongs_to :staff

end