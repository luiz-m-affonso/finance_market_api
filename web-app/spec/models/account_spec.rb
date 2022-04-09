require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:subject) { described_class.new(customer_id: 1, balance: '100.00', type: 'Business Account') }

  describe 'relations and validations' do
    it { is_expected.to validate_presence_of(:customer_id) }
    it { is_expected.to validate_presence_of(:balance) }
    it { is_expected.to validate_presence_of(:type) }

    it 'belongs to a user' do
      is_expected.to belong_to(:user)
    end

    it 'has many transactions' do
      is_expected.to have_many(:transactions)
    end

    context 'when Account has invalid attributes' do
      let(:account) { described_class.new(customer_id: nil, balance: nil, type: nil) }

      it 'is not valid without a name' do
        is_expected.not_to be_valid
      end

      it 'is not valid without a balance' do
        is_expected.not_to be_valid
      end

      it 'is not valid without a user' do
        is_expected.not_to be_valid
      end
    end
  end
end

