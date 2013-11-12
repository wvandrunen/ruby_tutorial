class StringCalculator
	def add (numbers)

		if(numbers.empty?) 
			return nil
		end

		arr = numbers.split(",")

		add = 0;

		while arr.length > 0
			add = add + sum_splitted_with_eof(arr.last.to_i, "\\n")
			arr.pop
		end

		return add
	end

	def sum_splitted_with_eof(numbers_with_eof, split) {
		arr = numbers_with_eof.split(split)

		result  = 0

		while arr.length > 0
			result = result + arr.last.to_i
			arr.pop
		end

		return result
	end
end