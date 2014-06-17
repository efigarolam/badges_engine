class CreateBadgesEngineBadges < ActiveRecord::Migration
  def change
    create_table :badges_engine_badges do |t|
      t.string :name
      t.string :image
      t.text :description
      t.integer :level
      t.string :award

      t.timestamps
    end
  end
end
