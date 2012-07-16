class Chatter < ActiveRecord::Base
  attr_accessible :name, :avatar, :linker, :client
  has_attached_file :avatar, :styles => { :thumb => "100x100>" }
end
