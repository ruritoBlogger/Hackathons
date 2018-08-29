class AddUserNameToIe < ActiveRecord::Migration[5.2]
  def change
    add_column :ies, :user_id, :integer
  end
end
