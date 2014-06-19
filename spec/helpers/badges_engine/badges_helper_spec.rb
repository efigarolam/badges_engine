require 'spec_helper'

module BadgesEngine
  describe BadgesHelper, helper: true do
    let!(:award) { FactoryGirl.build(:award) }

    describe '#show_award' do
      it 'returns the title of the award' do
        expect(helper.show_award(award)).to eq award.title
      end

      it 'returns empty space if award\'s title is not defined' do
        award.title = ''
        expect(helper.show_award(award)).to eq ''
      end
    end
  end
end
