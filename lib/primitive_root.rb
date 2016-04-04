require "primitive_root/version"
require 'prime'
require 'openssl'

class PrimeComponent
	# number g is a primitive root modulo n if every number 
	# coprime to n is congruent to a power of g modulo n
	def primitive_root(n)		
		totient = euler_totient(n)
		factors = distinct_factors(totient).map{|f| totient/f }
		for g in 1..totient do
			is_break = false
			for f in factors do
				if modular_exponentiation(g, f, n) == 1
					is_break = true
					break
				end
			end
			if is_break
				next
			else
				return g
			end
		end
	end

	# Euler totient function denoted by phi(n)
	# calculated using Euler product method
	def euler_totient(n)
		if Prime.prime?(n)
			n - 1
		else
			factors = distinct_factors(n).map{|f| (1 - (1.0/f.to_f))}
			return (n * factors.inject(:*)).to_i
		end
	end

	private
	# Get all distinct factors of integer
	def distinct_factors(n)
		n.prime_division.map(&:first)
	end

	# Modular exponentiation
	def modular_exponentiation(base, exponent, modulus)
		base.to_bn.mod_exp(exponent, modulus).to_i
	end
end
