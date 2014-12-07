class GeneticAlgorithm
  attr_accessor :result_data, :source_data
  attr_reader :source_data
  
  def initialize source, result
    @source_data = source
    @result_data = result
  end

  def run
    1000.times do
      run_generation
    end
  end

  def run_generation
    result_data.first.red = 500
  end
end
