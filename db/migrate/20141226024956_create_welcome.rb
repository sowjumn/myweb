class CreateWelcome < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
      t.text :para1
      t.text :para2
      t.text :para3
      
      t.timestamps
    end
  end
end
