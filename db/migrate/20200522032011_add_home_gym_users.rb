class AddHomeGymUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :home_gym, :string
  end
end
