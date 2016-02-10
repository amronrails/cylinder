class CreateCarSpecs < ActiveRecord::Migration
  def change
    create_table :car_specs do |t|
      t.integer :car_id
      t.integer :spec_id
      t.string :value
      t.string :value_ar
      t.text :hary

      t.timestamps null: false
    end
    add_index :car_specs, ["car_id", "spec_id"]
  end
end
