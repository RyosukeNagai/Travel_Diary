class CreateShioris < ActiveRecord::Migration[5.2]
  def change
    create_table :shioris do |t|
    	t.integer :user_id
    	t.string :title
    	t.text :body
    	t.string :shiori_image_id
      t.timestamps
    end
  end
end
