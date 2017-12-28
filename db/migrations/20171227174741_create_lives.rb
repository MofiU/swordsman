class CreateLife < ActiveRecord::Migration[5.0]

  def change
    create_table :lives do |t|
      t.belongs_to :race, foreign_key: true
      t.string :name, null: false
      t.integer :age, null: false
      t.string :sex, null: false, default: 'famale'
      t.integer :current_mana, null: false
      t.integer :current_health_point, null: false
      t.integer :total_mana, null: false
      t.integer :total_healthy_point, null: false
      t.integer :damage, null: false
      t.integer :defense, null: false
      t.integer :speed, null: false
      t.integer :level, null: false
      t.integer :total_exp, null: false
      t.integer :current_exp, null: false
      t.string :delete_at
      t.string :delete_by
      t.timestamps      null: false
    end
  end

end
