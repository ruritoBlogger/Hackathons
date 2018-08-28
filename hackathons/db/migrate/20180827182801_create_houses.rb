class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :user_name
      t.string :house_name
      t.text :detail
      t.string :canVisit
      t.text :caution

      t.timestamps
    end
  end
end
