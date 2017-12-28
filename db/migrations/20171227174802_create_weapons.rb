class CreateWeapon < ActiveRecord::Migration[5.0]

  def change
    create_table :weapons do |t|
      t.belongs_to :life, foreign_key: true
      t.string :name, null: false, uniq: true
      t.integer :damage, default: 0, null: false
      t.timestamps      null: false
    end
  end

end
