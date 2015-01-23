
require 'faraday'
require 'json'


class Search

  attr_reader :colour, :noun, :results
  attr_accessor :search_results

  def initialize(colour)
    @colour = colour
    @noun = ["man", "mountain", "state", "ocean", "country", "building", "cat", "airline", "wealth", "happiness", "pride", "fear", "religion", "bird", "book", "phone", "rice", "snow", "water"].sample
    @search_result = []
    @results = generate_search
  end

  def generate_search
    response = Faraday.get("https://www.googleapis.com/customsearch/v1?key=AIzaSyB9qMYwsnHtfsu3ZfPgVE4K6YekbUYHKKY&cx=012986436070255057372:htg6wyihnie&q=#{@noun}&imgDominantColor=#{colour}")
    json = JSON.parse(response.body)
    results = []

    (0..5).each do |index|
      results << get_json_result(json, index)
    end

    return results
  end

end
