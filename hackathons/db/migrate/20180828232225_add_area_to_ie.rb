class AddAreaToIe < ActiveRecord::Migration[5.2]
  def change
    add_column :ies, :area, :integer
  end
end
