class Student < ActiveRecord::Base

  #attr_accessor :active

  # def initialize(name, active=false)
  #   @name = name
  #   @active = active
  # end
  # def active
  #   self.active ||= false
  #   self.active
  # end

  # def active=(value)
  #   self.active = value
  # end

  def to_s
    self.first_name + " " + self.last_name
  end


end