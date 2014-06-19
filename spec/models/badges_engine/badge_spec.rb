require 'spec_helper'

describe BadgesEngine::Badge do
  let(:badge) { create(:badge) }

  it { expect(badge).to be_valid }

  context 'validations' do
    it { expect(badge).to validate_presence_of(:name) }
    it { expect(badge).to validate_uniqueness_of(:name) }
    it { expect(badge).to validate_numericality_of(:level).only_integer }
  end
end
