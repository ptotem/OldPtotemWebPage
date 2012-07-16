class Product < ActiveRecord::Base
  attr_accessible :game, :name, :avatar, :description, :sequence, :demo_path, :did_you_know, :brief, :salient_points, :purchase_info
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
