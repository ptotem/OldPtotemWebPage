class Story < ActiveRecord::Base
  attr_accessible :context, :difficulty, :name, :avatar
  has_many :snippets, :dependent => :destroy
  has_attached_file :avatar, :styles => { :medium => "300x600>"}

  after_create :create_root_snippet

  def create_root_snippet
    @snippet=Snippet.create(:description=>"Start the story: #{self.name}", :story_id=>self.id)
    PathOption.create(:name=>"Start", :snippet_id=>@snippet.id)
  end

end
