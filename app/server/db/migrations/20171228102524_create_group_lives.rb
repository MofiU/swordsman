class CreateGroupLife < ActiveRecord::Migration[5.0]

  def change
    create_table :group_lives do |t|
      t.belongs_to :group, foreign_key: true, null: false
      t.belongs_to :life, foreign_key: true, null: false
      t.string :title
      t.integer :rank, default: 1000
      t.integer :credit, default: 0
      t.string :delete_at
      t.string :delete_by
      t.timestamps      null: false
    end
    add_index :group_lives, [:group_id, :life_id], unique: true
  end

end
