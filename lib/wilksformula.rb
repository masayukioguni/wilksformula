require "wilksformula/version"
require "wilksformula/calculate"


module Wilksformula

	@calc = Calculate.new
	def self.men_formula(weight,value)
		@calc.men_formula(weight,value)
	end
	def self.women_formula(weight,value)
		@calc.women_formula(weight,value)
	end
end
