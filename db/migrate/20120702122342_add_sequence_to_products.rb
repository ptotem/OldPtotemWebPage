class AddSequenceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :sequence, :integer, :default=>1
  end
end
