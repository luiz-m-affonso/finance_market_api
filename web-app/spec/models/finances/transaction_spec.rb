require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:subject) { described_class.new(amount: '100', date: Date.today, type: 'Transference', description: 'Pay the bills')}

  describe 'relations and validations' do
    it { is_expected.to belongs_to(:customer) }
    it { is_expected.to belongs_to(:account) }
    it { is_expected.to validate_presence_of(:amount) }
    it { is_expected.to validate_presence_of(:date) }
    it { is_expected.to validate_presence_of(:type) }
    it { is_expected.to validate_presence_of(:description)}

    context 'when Transaction has valid attributes' do
      it { is_expected.to be_valid }
    end

    context 'when Transaction has invalid attributes' do
      let(:transaction) { described_class.new(amount: nil, date: Date.today, type: nil, description: nil) }
      it { expect(transaction).not_to be_valid }
    end
  end
end
