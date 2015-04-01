class CreateMonitors < ActiveRecord::Migration
  def change
    create_table :monitors do |t|
    	t.string :montiorname
    	t.string :monitoringactivity
    	t.timestamps
    end
  end
end
