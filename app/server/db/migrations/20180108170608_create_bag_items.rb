class CreateBagItem < ActiveRecord::Migration[5.0]

  def change
    create_table :bag_items do |t|
      t.belongs_to :bag, foreign_key: true, null: false
      t.belongs_to :item, foreign_key: true, null: false
      t.integer :count, default: 0
      t.timestamps      null: false
    end
  end

end
