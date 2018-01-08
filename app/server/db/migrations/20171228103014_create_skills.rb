class CreateSkill < ActiveRecord::Migration[5.0]

  def change
    create_table :skills do |t|
      t.string :name, uniq: true, null: false
      t.string :description, uniq: true, null: false
      t.integer :damage, default: 0
      t.timestamps      null: false
    end
  end

end
