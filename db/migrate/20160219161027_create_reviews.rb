class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :car_id
      t.string :name
      t.string :email
      t.float :rating

      t.integer :resale_rating
      t.integer :tawkeel_rating
      t.integer :p4v_rating
      t.integer :luxury_rating
      t.integer :safety_rating

      t.text :comment
      t.integer :votes

      t.timestamps null: false
    end
  end
end
