class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.integer :user_id
      t.integer :area
      t.integer :month
      t.integer :startDay
      t.integer :longDay

      t.timestamps
    end
  end
end
