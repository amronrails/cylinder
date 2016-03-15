class Spec < ActiveRecord::Base
	has_many :car_specs
	has_many :cars, :through =>  :car_specs

	acts_as_list


	scope :sorted, lambda{order("specs.position ASC")}
	scope :visible, lambda{where(:visible => true)}
end
