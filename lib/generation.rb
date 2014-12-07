MAX_PIXEL_SIZE = 65535

class Generation
  def initialize source, result
    @source = source
    @result = result
  end

  def run_generation
    @result.each do |pixel|
      pixel.red = Random.rand(MAX_PIXEL_SIZE)
      pixel.green = Random.rand(MAX_PIXEL_SIZE)
      pixel.blue = Random.rand(MAX_PIXEL_SIZE)
    end
  end
end
      
