require_relative './spec_helper'
require_relative '../lib/generation'

describe Generation do
  let(:g) { Generation.new [Pixel.new(10000, 10000, 10000), Pixel.new(10000, 10000, 10000), Pixel.new(10000, 10000, 10000)],
                           [Pixel.new(1, 1, 1), Pixel.new(1, 1, 1), Pixel.new(1, 1, 1)]}

  it 'can run a generation' do
    g.run_generation
  end

end
