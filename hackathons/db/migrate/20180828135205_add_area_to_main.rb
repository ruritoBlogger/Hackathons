class AddAreaToMain < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :area, :integer
  end
end
