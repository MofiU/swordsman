class CreateGroup < ActiveRecord::Migration[5.0]

  def change
    create_table :groups do |t|
      t.string :name, index: true, null: false
      t.string :principle, null: false
      t.string :delete_at
      t.string :delete_by
      t.timestamps      null: false
    end
  end


end
