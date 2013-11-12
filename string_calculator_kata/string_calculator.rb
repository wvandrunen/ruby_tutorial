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