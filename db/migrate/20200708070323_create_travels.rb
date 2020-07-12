class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
    	t.integer :user_id
    	t.string :title
    	t.text :body
    	t.string :address
    	t.string :travel_image_id
      t.timestamps
    end
  end
end
