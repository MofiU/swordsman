class CreateArmor < ActiveRecord::Migration[5.0]
  ## example
  def up
     unless ActiveRecord::Base.connection.table_exists? 'armors'
        create_table :armors do |t|
          t.belongs_to :life, foreign_key: true
          t.string :name, null: false, uniq: true
          t.integer :damage, defaul: 0, null: false
          t.timestamps      null: false
        end
    end
  end
  def down
    if ActiveRecord::Base.connection.table_exists? 'armors'
      drop_table :armors
     end
  end

end
