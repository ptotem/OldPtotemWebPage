class AddLinksToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :facebook, :string
    add_column :employees, :linkedin, :string
  end
end
