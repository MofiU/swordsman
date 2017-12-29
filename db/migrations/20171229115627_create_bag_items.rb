class CreateBagItem < ActiveRecord::Migration[5.0]

  def change
    create_table :bag_items do |t|
      t.belongs_to :bag, foreign_key: true
      t.string :ref_class, null: false
      t.integer :ref_id, null: false
      t.integer :count, default: 1
      t.timestamps      null: false
    end
    add_index :bag_items, [:ref_class, :ref_id, :bag_id], unique: true
  end

end
