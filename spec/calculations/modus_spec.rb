require 'rails_helper'

describe Modus do
  subject(:modus) { described_class.result_for(input) }

  context 'With [10, 11, 10, 12, 13, 13, 13]' do
    let(:input) { [10, 11, 10, 12, 13, 13, 13] }

    it 'Returns [13]' do
      expect(modus).to eq [13]
    end
  end

  context 'With [10, 10, 12, 13, 14, 12]' do
    let(:input) { [10, 10, 12, 13, 14, 12] }

    it 'Returns [10, 12]' do
      expect(modus).to eq [10, 12]
    end
  end

  context 'With [10, 12, 13, 8, 6, 4]' do
    let(:input) { [10, 12, 13, 8, 6, 4] }

    it 'Returns []' do
      expect(modus).to be_empty
    end
  end

  context 'With [12, 12, 13, 13]' do
    let(:input) { [12, 12, 13, 13] }

    it 'Returns []' do
      expect(modus).to be_empty
    end
  end

  context 'With [8]' do
    let(:input) { [8] }

    it 'Returns [8]' do
      expect(modus).to eq [8]
    end
  end

  context 'With [5, 5]' do
    let(:input) { [5, 5] }

    it 'Returns [5]' do

    end
  end

  context 'With []' do
    let(:input) { [] }

    it 'Returns []' do
      expect(modus).to be_empty
    end
  end
end
