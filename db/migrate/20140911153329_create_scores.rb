class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.string :name
      t.integer :points, default: 0

      t.timestamps
    end
  end
end
