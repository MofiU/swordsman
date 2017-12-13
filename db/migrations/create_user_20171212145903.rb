class CreateUser < ActiveRecord::Migration[5.0]
 
  def up
    unless ActiveRecord::Base.connection.table_exists? 'users'
      create_table :users do |t|
        t.string :name
        t.timestamps      null: false
      end
    end
  end

  def down
    if ActiveRecord::Base.connection.table_exists? 'users'
      drop_table :users
    end
  end
 
end