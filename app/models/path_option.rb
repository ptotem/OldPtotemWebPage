class PathOption < ActiveRecord::Base
  attr_accessible :name, :next_id, :snippet_id
  belongs_to :snippet
end
