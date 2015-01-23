class Search

  attr_reader :colour, :noun_choice
  attr_accessor :search_results

  def initialize(colour)
    @colour = colour
    @noun = ["happiness"].sample
    @search_result = []
  end

  def generate_search
    return "https://www.googleapis.com/customsearch/v1?key=AIzaSyB9qMYwsnHtfsu3ZfPgVE4K6YekbUYHKKY&cx=012986436070255057372:htg6wyihnie&q=#{@noun}&imgDominantColor=#{colour}"
  end

end
