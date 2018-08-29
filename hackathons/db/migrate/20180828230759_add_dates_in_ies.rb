class AddDatesInIes < ActiveRecord::Migration[5.2]
  def change
    add_column :ies, :user_name, :string
    add_column :ies, :house_name, :string
    add_column :ies, :detail, :text
    add_column :ies, :canVisit, :string
    add_column :ies, :caution, :text
    add_column :ies, :image_name, :string
  end
end
