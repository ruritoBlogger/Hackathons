class RemoveHouseImageNameToHouse < ActiveRecord::Migration[5.2]
  def change
    remove_column :houses, :house_image_name, :string
  end
end
