require_relative '../genetic_algorithm'

Pixel = Struct.new(:red, :green, :blue) do
end

describe GeneticAlgorithm do
  let(:g) { GeneticAlgorithm.new [Pixel.new(10000, 10000, 10000), Pixel.new(10000, 10000, 10000), Pixel.new(10000, 10000, 10000)],
                                 [Pixel.new(1, 1, 1), Pixel.new(1, 1, 1), Pixel.new(1, 1, 1)]}

  it 'can run the simulation' do
    expect(g).to receive(:run_generation).at_least(1).times
    g.run
  end

  it 'gets better in a generation' do
    beginning_red = g.result_data.first.red
    g.run_generation
    new_diff = (g.result_data.first.red - g.source_data.first.red).abs
    old_diff = (beginning_red - g.source_data.first.red).abs
    expect(new_diff).to be < old_diff
  end
end
