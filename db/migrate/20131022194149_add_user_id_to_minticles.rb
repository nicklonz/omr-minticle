class AddUserIdToMinticles < ActiveRecord::Migration
  def change
    add_column :minticles, :user_id, :integer
    add_index :minticles, :user_id
  end
end
