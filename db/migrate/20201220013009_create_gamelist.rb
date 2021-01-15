class CreateGamelist < ActiveRecord::Migration[6.0]
  def change
    create_table :gamelists do |t|
      t.string :title
      t.text :description
    end
  end
end
