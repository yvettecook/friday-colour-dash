class Search

  attr_reader :colour, :noun
  attr_accessor :search_results

  def initialize(colour)
    @colour = colour
    @noun = ["man", "mountain", "state", "ocean", "country", "building", "cat", "airline", "wealth", "happiness", "pride", "fear", "religion", "bird", "book", "phone", "rice", "snow", "water"].sample
    @search_result = []
  end

  def generate_search
    return "https://www.googleapis.com/customsearch/v1?key=AIzaSyB9qMYwsnHtfsu3ZfPgVE4K6YekbUYHKKY&cx=012986436070255057372:htg6wyihnie&q=#{@noun}&imgDominantColor=#{colour}"
  end

end
