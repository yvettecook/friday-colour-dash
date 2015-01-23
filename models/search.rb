class Search

  attr_reader :colour, :noun_choice

  def initialize(colour)
    @colour = colour
    @noun = ["happiness"].sample
  end

  def generate_search
    return "https://www.googleapis.com/customsearch/v1?key=AIzaSyB9qMYwsnHtfsu3ZfPgVE4K6YekbUYHKKY&cx=017576662512468239146:omuauf_lfve&q=#{@noun}&imgDominantColor=#{colour}"
  end

end
