class CreateIes < ActiveRecord::Migration[5.2]
  def change
    create_table :ies do |t|
      t.string :ies

      t.timestamps
    end
  end
end
