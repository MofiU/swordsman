class CreateKillLog < ActiveRecord::Migration[5.0]

  def change
    create_table :kill_logs do |t|
      t.belongs_to :life, foreign_key: true, null: false
      t.string :description, null: false
      t.timestamps      null: false
    end
  end


end
