class CreateCarImages < ActiveRecord::Migration
  def change
    create_table :car_images do |t|
    	t.integer :model_id
      t.timestamps null: false
    end
    add_attachment :car_images, :avatar
  end

end
