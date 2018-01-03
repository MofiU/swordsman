class CreateMap < ActiveRecord::Migration[5.0]

  def change
    create_table :maps do |t|
      t.string :name
      t.integer :level
      t.timestamps      null: false
    end
  end

end
