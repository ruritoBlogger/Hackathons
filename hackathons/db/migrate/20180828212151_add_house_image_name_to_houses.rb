class AddHouseImageNameToHouses < ActiveRecord::Migration[5.2]
  def change
    add_column :houses, :house_image_name, :string
  end
end
