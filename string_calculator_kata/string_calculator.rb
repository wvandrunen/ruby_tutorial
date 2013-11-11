require 'test/unit'

class StringCalculator
	def add (numbers)

		if(numbers.empty?) 
			return nil
		end

		arr = numbers.split(",")

		add = 0;

		while arr.length > 0
			add = add + arr.last.to_i
			arr.pop
		end

		return add
	end
end

class TestAdd < Test::Unit::TestCase
	def test_empty_string
		string_cal = StringCalculator.new

		assert_equal nil, string_cal.add("")
	end

	def test_add_one_and_two
		string_cal = StringCalculator.new

		assert_equal 3, string_cal.add("1,2")
	end

	def test_add_zero_and_two
		string_cal = StringCalculator.new

		assert_equal 2, string_cal.add("0,2")
	end

	def test_add_zero_and_two_and_three
		string_cal = StringCalculator.new

		assert_equal 5, string_cal.add("0,2,3")
	end
end