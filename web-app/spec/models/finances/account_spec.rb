require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:subject) { described_class.new(customer_id: 1, balance: '100.00', type: 'Business Account') }

  describe 'relations and validations' do
    it { is_expected.to belongs_to(:customer) }
    it { is_expected.to have_many(:transactions) }
    it { is_expected.to validate_presence_of(:customer_id) }
    it { is_expected.to validate_presence_of(:balance) }
    it { is_expected.to validate_presence_of(:type) }

    context 'when Account has valid attributes' do
      it { is_expected.to be_valid }
    end

    context 'when Account has invalid attributes' do
      let(:account) { described_class.new(customer_id: nil, balance: nil, type: nil) }
      it { expect(account).not_to be_valid }
    end
  end
end

