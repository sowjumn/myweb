class CreateWelcomeRecord < ActiveRecord::Migration
  def up
    Welcome.create(para1: 'This is where the about text goes', para2: 'more info', para3: 'Some more')
  end

  def down
    Welcome.first.destroy
  end
end
