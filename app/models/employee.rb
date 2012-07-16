class Employee < ActiveRecord::Base
  attr_accessible :description, :name, :avatar, :posx, :posy, :color
  has_attached_file :avatar, :styles => { :thumb => "100x100>"}
end
