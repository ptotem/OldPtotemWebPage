class Snippet < ActiveRecord::Base
  attr_accessible :description, :story_id
  belongs_to :story
  has_many :path_options, :dependent => :destroy

end
