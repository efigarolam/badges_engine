require 'spec_helper'

describe BadgesEngine::Badge do
  let(:badge) { create(:badge) }

  it { expect(badge).to be_valid }
end
