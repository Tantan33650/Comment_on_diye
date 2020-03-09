class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :point, :default => 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
