class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.integer :story_id
      t.text :description

      t.timestamps
    end
  end
end
