class ChangeDefaultAdmin < ActiveRecord::Migration
  def change
    change_column :admins, :trust, :boolean, :default => false
  end
end
