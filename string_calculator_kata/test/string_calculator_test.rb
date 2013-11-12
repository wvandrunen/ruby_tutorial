require_relative '../string_calculator'
require 'test/unit'

class TestAdd < Test::Unit::TestCase
	
	def test_empty_string
		string_cal = ::StringCalculator.new

		assert_equal nil, string_cal.add("")
	end

	def test_add_one_and_two
		string_cal = ::StringCalculator.new

		assert_equal 3, string_cal.add("1,2")
	end

	def test_add_zero_and_two
		string_cal = ::StringCalculator.new

		assert_equal 2, string_cal.add("0,2")
	end

	def test_add_zero_and_two_and_three
		string_cal = ::StringCalculator.new

		assert_equal 5, string_cal.add("0,2,3")
	end

	def test_add_zero_and_two_and_three_four
		string_cal = ::StringCalculator.new

		assert_equal 9, string_cal.add("0,2,3,4")
	end 
end