require 'byebug'
require 'RMagick'
include Magick

MAX_PIXEL_SIZE = 65535

class ImageAnalyzer
  attr_accessor :analyzed_data

  def initialize image
    @image = ImageList.new(image)
    @analyzed_data = @image.get_pixels(0, 0, @image.columns, @image.rows)
  end

  def analyze
    @analyzed_data.each do |pixel|
      #pixel.red = 0
      pixel.red = 65535
    end
  end

  def write
    @image = @image.store_pixels(0, 0, @image.columns, @image.rows, @analyzed_data)
    @image.write('mona_out.jpg')
  end
  
end
