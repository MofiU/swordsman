class CreateGrowingLog < ActiveRecord::Migration[5.0]

  def change
    create_table :growing_logs do |t|
      t.belongs_to :group, foreign_key: true
      t.string :description, null: false
      t.timestamps      null: false
    end
  end

end
