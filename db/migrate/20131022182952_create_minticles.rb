class CreateMinticles < ActiveRecord::Migration
  def change
    create_table :minticles do |t|
      t.string :description

      t.timestamps
    end
  end
end
