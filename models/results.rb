class Results

	 attr_reader :results

	 def initialize()
	 	@results = []
	 end

	 def save_result(colour,noun, query, execution_time, time)
	 	@results << {
	 		:colour => colour,
	 		:noun => noun, 
	 		:query => query,
	 		:execution_time => execution_time,
	 		:time => time
	 	}
	 end	