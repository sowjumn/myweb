class CreatePresentations < ActiveRecord::Migration
  def change
    create_table :presentations do |t|
      t.text :description
      t.string :title
      t.string :embedlink

      t.timestamps
    end
  end
end
