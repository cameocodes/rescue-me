require "image_processing/mini_magick"

class ImageUploader < Shrine
  plugin :processing
  plugin :versions
  plugin :delete_raw # delete processed files after uploading

  process(:store) do |io, context|
    original = io.download
    pipeline = ImageProcessing::MiniMagick.source(original)

    size_80 = pipeline.resize_to_limit!(80, 80)
    size_150 = pipeline.resize_to_limit!(150,150)
    size_300 = pipeline.resize_to_limit!(300, 300)

    original.close!

    { original: io, thumb: size_80, small: size_150, medium: size_300 }
  end
end