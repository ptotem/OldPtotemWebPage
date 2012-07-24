class CreatePathOptions < ActiveRecord::Migration
  def change
    create_table :path_options do |t|
      t.integer :snippet_id
      t.string :name
      t.integer :next_id

      t.timestamps
    end
  end
end
