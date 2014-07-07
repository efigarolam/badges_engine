module BadgesEngine
  class ImageUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick

    storage :fog

    def extension_white_list
      %w(jpg svg jpeg gif png)
    end
  end
end
