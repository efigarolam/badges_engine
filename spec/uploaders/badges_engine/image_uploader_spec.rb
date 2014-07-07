require 'spec_helper'

module BadgesEngine
  describe ImageUploader do
    let!(:badge) { create(:badge) }
    let!(:uploader) { ImageUploader.new(badge, :image) }

    before do
      ImageUploader.enable_processing = true
      uploader.store!(File.open(
        "#{ BadgesEngine::Engine.root }/spec/fixtures/holder.png"))
    end

    after do
      ImageUploader.enable_processing = false
      uploader.remove!
    end

    it { expect(uploader.extension_white_list).to eq %w(jpg svg jpeg gif png) }
    it { expect(uploader.mounted_as).to eq :image }
  end
end
