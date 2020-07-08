class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
    	t.integer :travel_id
    	t.integer :year
    	t.integer :month
    	t.integer :day
    	t.text :plan

      t.timestamps
    end
  end
end
