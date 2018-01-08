class CreateLifeSkill < ActiveRecord::Migration[5.0]

  def change
    create_table :life_skills do |t|
      t.belongs_to :skill, foreign_key: true, null: false
      t.belongs_to :life, foreign_key: true, null: false
      t.integer :level, default: 1
      t.timestamps      null: false
    end
  end

end
