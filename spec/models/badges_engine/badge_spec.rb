require 'spec_helper'

describe BadgesEngine::Badge do
  let(:badge) { build(:badge) }

  it { expect(badge).to be_valid }

  context 'validations' do
    it { expect(badge).to validate_presence_of(:name) }
    it { expect(badge).to validate_uniqueness_of(:name) }
    it { expect(badge).to validate_numericality_of(:level).only_integer }
  end

  context 'relationships' do
    it { expect(badge).to belong_to(:award) }
  end
end
