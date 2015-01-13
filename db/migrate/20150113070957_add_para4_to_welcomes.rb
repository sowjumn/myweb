class AddPara4ToWelcomes < ActiveRecord::Migration
  def change
    add_column :welcomes, :para4, :text
  end
end
