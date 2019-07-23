require 'rails_helper'

describe Median do
  subject(:median) { described_class.result_for(input) }

  context 'With [6, 9, 3, 1, 3, 7, 8]' do
    let(:input) { [6, 9, 3, 1, 3, 7, 8] }

    it 'Returns 6' do
      expect(median).to eq 6
    end
  end

  context 'With [8, 1, 6, 2, 3, 5, 9, 4]' do
    let(:input) { [8, 1, 6, 2, 3, 5, 9, 4] }

    it 'Returns 4.5' do
      expect(median).to eq 4.5
    end
  end

  context 'With [3, 9, 2, 1, 2]' do
    let(:input) { [3, 9, 2, 1, 2] }

    it 'Returns 2' do
      expect(median).to eq 2
    end
  end

  context 'With [2, 1]' do
    let(:input) { [2, 1] }

    it 'Returns 1.5' do
      expect(median).to eq 1.5
    end
  end

  context 'With [5]' do
    let(:input) { [5] }

    it 'Returns 5' do
      expect(median).to eq 5
    end
  end

  context 'With []' do
    let(:input) { [] }

    it 'Returns nil' do
      expect(median).to be_nil
    end
  end
end
