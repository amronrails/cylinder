class Spec < ActiveRecord::Base
	has_many :car_specs
	has_many :cars, :through =>  :car_specs

	scope :sorted, lambda{order("agents.position ASC")}
	scope :visible, lambda{where(:visible => true)}
end
