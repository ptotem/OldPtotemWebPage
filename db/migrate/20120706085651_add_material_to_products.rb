class AddMaterialToProducts < ActiveRecord::Migration
  def change
    add_column :products, :brief, :text
    add_column :products, :did_you_know, :text
    add_column :products, :salient_points, :text
    add_column :products, :purchase_info, :text
  end
end
