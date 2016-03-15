class AddSpecsToCar < ActiveRecord::Migration
  def change
	add_column :cars, :motorCapacity, :string
	add_column :cars, :horsePower, :string
	add_column :cars, :takseet, :string
	add_column :cars, :review_total, :float
	add_column :cars, :int_review_total, :int

	add_column :cars, :int_review1, :int
	add_column :cars, :int_review2, :int
	add_column :cars, :int_review3, :int
	add_column :cars, :int_review4, :int
	add_column :cars, :int_review5, :int

	add_column :cars, :float_review1, :float
	add_column :cars, :float_review2, :float
	add_column :cars, :float_review3, :float
	add_column :cars, :float_review4, :float
	add_column :cars, :float_review5, :float



	add_column :cars, :price, :string
	add_column :cars, :price2, :string
	add_column :cars, :additional, :string
	add_column :cars, :additional2, :string
	add_column :cars, :additional3, :string
	add_column :cars, :additional4, :string
	add_column :cars, :additional5, :string
	add_column :cars, :additional6, :string
	add_column :cars, :additional7, :string
	add_column :cars, :additional8, :string

  end
end
