class Event < ActiveRecord::Base
  has_many :staffs, through: :assign_events
  has_many :assign_events
  has_many :tracks
  after_create :create_tracks

  def create_tracks
    8.times do |track_number|
      Track.create(number: (track_number.to_i + 1), event: self, group: 1)
      Track.create(number: (track_number.to_i + 1), event: self, group: 2)
      Track.create(number: (track_number.to_i + 1), event: self, group: 3)
    end
  end

  def self.style
    [
      ["自由式","freestyle"],
      ["蛙泳","breaststroke"],
      ["仰式","backstroke"],
      ["蝶式","butterfly"],
      ["混合","mix"],
    ]
  end

  def full_name
    case style
      when 'freestyle'
        style = '自由式'
      when 'breaststroke'
        style = '蛙泳'
      when 'backstroke'
        style = '仰式'
      when 'butterfly'
        style = '蝶式'
      when 'mix'
        style = '混合'
    end 

    case gender
      when 'male'
        gender = '男子'
      when 'female'
        gender = '女子'
    end
      
    gender + age_range + "歲" + length + "米" + style
  end

  def athletes
    staffs
  end

end