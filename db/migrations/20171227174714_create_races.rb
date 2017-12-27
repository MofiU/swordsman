class CreateRace < ActiveRecord::Migration[5.0]
  ## example
  def up
     unless ActiveRecord::Base.connection.table_exists? 'races'
        create_table :races do |t|
          t.string :name, uniq: true, null: false
          t.timestamps      null: false
        end
    end
  end
  def down
    if ActiveRecord::Base.connection.table_exists? 'races'
      drop_table :races
     end
  end

end
