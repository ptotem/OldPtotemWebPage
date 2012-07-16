class AddAttachmentAvatarToChatters < ActiveRecord::Migration
  def self.up
    add_column :chatters, :avatar_file_name, :string
    add_column :chatters, :avatar_content_type, :string
    add_column :chatters, :avatar_file_size, :integer
    add_column :chatters, :avatar_updated_at, :datetime
  end

  def self.down
    remove_column :chatters, :avatar_file_name
    remove_column :chatters, :avatar_content_type
    remove_column :chatters, :avatar_file_size
    remove_column :chatters, :avatar_updated_at
  end
end
