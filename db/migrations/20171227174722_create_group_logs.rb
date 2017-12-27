class CreateGroupLog < ActiveRecord::Migration[5.0]
  ## example
  def up
     unless ActiveRecord::Base.connection.table_exists? 'group_logs'
        create_table :group_logs do |t|
          t.belongs_to :group, foreign_key: true
          t.string :description, null: false
          t.timestamps      null: false
        end
    end
  end
  def down
    if ActiveRecord::Base.connection.table_exists? 'group_logs'
      drop_table :group_logs
     end
  end

end
