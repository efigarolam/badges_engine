require 'spec_helper'

module BadgesEngine
  describe Award do
    let(:award) { create(:award) }

    it { expect(award).to be_valid }

    context 'validations' do
      it { expect(award).to validate_presence_of(:title) }
    end
  end
end
