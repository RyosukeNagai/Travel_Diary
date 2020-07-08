class CreatePreparations < ActiveRecord::Migration[5.2]
  def change
    create_table :preparations do |t|
    	t.integer :travel_id
    	t.integer :genre_id
    	t.string :name
    	t.boolean :is_active

      t.timestamps
    end
  end
end
