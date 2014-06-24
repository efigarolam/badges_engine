require 'spec_helper'

module BadgesEngine
  describe Value do
    let(:value) { build(:value) }

    it { expect(value).to be_valid }

    context 'validations' do
      it { expect(value).to validate_presence_of(:name) }
      it { expect(value).to validate_uniqueness_of(:name) }
    end
  end
end
