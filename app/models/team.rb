class Team < ActiveRecord::Base
  has_many :athletes #比賽選手
  has_many :coaches #教練
  has_many :staffs #隨隊人員
  has_many :events #比賽項目

  def athletes
    self.staffs.where(role: 'athlete')
  end
end