require_relative '../image_analyzer'

describe ImageAnalyzer do
  it 'can turn the pixel data to integers' do
    ia = ImageAnalyzer.new 'mona.jpg'
    expect(ia.analyzed_data[0].red).to eq 25700
  end
end
