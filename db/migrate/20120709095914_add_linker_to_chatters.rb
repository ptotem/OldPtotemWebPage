class AddLinkerToChatters < ActiveRecord::Migration
  def change
    add_column :chatters, :client, :string
    add_column :chatters, :linker, :string
  end
end
