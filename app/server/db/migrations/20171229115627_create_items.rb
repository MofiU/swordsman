class CreateItem < ActiveRecord::Migration[5.0]

  def change
    create_table :items do |t|
      t.string :name, null: false, uniq: true
      t.string :description, null: false, uniq: true
      t.string :category, null: false
      t.integer :damage, null: false, default: 0
      t.integer :defense, null: false, default: 0
      t.integer :speed, null: false, default: 0
      t.integer :healthy_point, null: false, default: 0
      t.integer :mana, null: false, default: 0
      t.timestamps      null: false
    end
  end

end
