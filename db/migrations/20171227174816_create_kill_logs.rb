class CreateKillLog < ActiveRecord::Migration[5.0]
  ## example
  def up
     unless ActiveRecord::Base.connection.table_exists? 'kill_logs'
        create_table :kill_logs do |t|
          t.belongs_to :life, foreign_key: true
          t.string :description, null: false
          t.timestamps      null: false
        end
    end
  end
  def down
    if ActiveRecord::Base.connection.table_exists? 'kill_logs'
      drop_table :kill_logs
     end
  end

end
