class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.integer :difficulty
      t.string :context

      t.timestamps
    end
  end
end
