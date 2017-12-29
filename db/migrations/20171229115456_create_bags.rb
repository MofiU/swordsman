class CreateBag < ActiveRecord::Migration[5.0]

  def change
    create_table :bags do |t|
      t.belongs_to :life, foreign_key: true
      t.integer :kind_size, default: 100
      t.timestamps      null: false
    end
  end

end
