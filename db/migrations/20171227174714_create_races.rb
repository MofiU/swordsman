class CreateRace < ActiveRecord::Migration[5.0]

  def change
    create_table :races do |t|
      t.string :name, uniq: true, null: false
      t.integer :base_mana, null: false
      t.integer :base_health_point, null: false
      t.integer :base_speed, null: false
      t.integer :base_damage, null: false
      t.integer :base_defense, null: false
      t.integer :mana_increment, null: false
      t.integer :health_point_increment, null: false
      t.integer :speed_increment, null: false
      t.integer :damage_increment, null: false
      t.integer :defense_increment, null: false
      t.timestamps      null: false
    end
  end


end