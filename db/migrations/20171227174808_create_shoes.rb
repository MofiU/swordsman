class CreateShoe < ActiveRecord::Migration[5.0]
  ## example
  def up
     unless ActiveRecord::Base.connection.table_exists? 'shoes'
        create_table :shoes do |t|
          t.belongs_to :life, foreign_key: true
          t.string :name, null: false, uniq: true
          t.integer :speed, default: 0, null: false
          t.timestamps      null: false
        end
    end
  end
  def down
    if ActiveRecord::Base.connection.table_exists? 'shoes'
      drop_table :shoes
     end
  end

end
