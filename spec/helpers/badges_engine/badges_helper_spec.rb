require 'spec_helper'

module BadgesEngine
  describe BadgesHelper, helper: true do
    let!(:award) { build(:award) }
    let!(:value) { build(:value) }
    let!(:level) { build(:level) }

    describe '#show_award' do
      it 'returns the title of the award' do
        expect(helper.show_award(award)).to eq award.title
      end

      it 'returns empty space if award\'s title is not defined' do
        award.title = ''
        expect(helper.show_award(award)).to eq ''
      end
    end

    describe '#show_award' do
      it 'returns the title of the value' do
        expect(helper.show_value(value)).to eq value.name
      end

      it 'returns empty space if value\'s title is not defined' do
        value.name = ''
        expect(helper.show_value(value)).to eq ''
      end
    end

    describe '#show_level' do
      it 'returns the tier of the level' do
        expect(helper.show_level(level)).to eq level.tier
      end

      it 'returns empty space if level\'s tier is not defined' do
        level.tier = ''
        expect(helper.show_level(level)).to eq nil
      end
    end
  end
end
