class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.integer :position
      t.boolean :visible
      t.string :permalink, :null =>false
      t.integer :brandsNumber

      t.timestamps null: false
    end
    add_index("countries", "permalink")
    add_index("countries", "name")
  end
end