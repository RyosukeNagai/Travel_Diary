class CreateSouvenirs < ActiveRecord::Migration[5.2]
  def change
    create_table :souvenirs do |t|
    	t.integer :shiori_id
    	t.string :name
    	t.integer :count
    	t.integer :price

      t.timestamps
    end
  end
end
