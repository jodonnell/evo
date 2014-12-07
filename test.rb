require './lib/image_analyzer'

ia = ImageAnalyzer.new 'mona.jpg'
ia.analyze
ia.write
