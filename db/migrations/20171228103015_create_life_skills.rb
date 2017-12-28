class CreateLifeSkill < ActiveRecord::Migration[5.0]

  def change
    create_table :life_skills do |t|
      t.belongs_to :group, foreign_key: true
      t.belongs_to :life, foreign_key: true
      t.integer :level, default: 1
      t.timestamps      null: false
    end
  end

end
