class AddPositionToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :posx, :integer
    add_column :employees, :posy, :integer
    add_column :employees, :color, :string
  end
end
