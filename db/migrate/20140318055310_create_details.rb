class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.integer :project_id
      t.text :bullet
    end
  end
end
