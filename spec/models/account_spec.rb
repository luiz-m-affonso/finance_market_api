require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:customer) {create(:customer)}
  let(:account) { Account.new(customer_id: customer.id, balance: '100.00', account_type: 'Business Account', id: 1) }

  describe 'relations and validations' do
    it { expect(account).to belong_to(:customer) }
    it { expect(account).to have_many(:transactions) }
    it { expect(account).to validate_presence_of(:balance) }
    it { expect(account).to validate_presence_of(:account_type) }

    context 'when Account has valid attributes' do
      it { expect(account).to be_valid }
    end

    context 'when Account has invalid attributes' do
      let(:account) { described_class.new(balance: nil, account_type: nil) }
      it { expect(account).not_to be_valid }
    end
  end
end