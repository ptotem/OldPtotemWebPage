class AddDemoPathToProducts < ActiveRecord::Migration
  def change
    add_column :products, :demo_path, :string
  end
end
