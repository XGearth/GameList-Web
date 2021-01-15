class Addtimestamps < ActiveRecord::Migration[6.0]
  def change
    add_column :gamelists, :created_at, :datetime
    add_column :gamelists, :updated_at, :datetime
  end
end
