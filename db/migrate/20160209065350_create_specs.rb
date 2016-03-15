class CreateSpecs < ActiveRecord::Migration
  def change
    create_table :specs do |t|
    	t.integer :position
    	t.string :key
    	t.boolean :visible
      t.boolean :table1
    	t.string :name
    	t.string :name_ar
    	t.text :info
    	t.string :value #fake


      t.timestamps null: false
    end
    add_index :specs, :key
  end
end
