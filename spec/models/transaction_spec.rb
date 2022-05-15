require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:customer) { create(:customer) }
  let(:account) { create(:account)}
  let(:transaction) { Transaction.new(customer_id: customer.id, account_id: account.id, amount: '100', date: Date.today, transaction_type: 'Transference', description: 'Pay the bills')}

  describe 'relations and validations' do
    it { expect(transaction).to belong_to(:customer) }
    it { expect(transaction).to belong_to(:account) }
    it { expect(transaction).to validate_presence_of(:amount) }
    it { expect(transaction).to validate_presence_of(:date) }
    it { expect(transaction).to validate_presence_of(:transaction_type) }
    it { expect(transaction).to validate_presence_of(:description)}

    context 'when Transaction has valid attributes' do
      it { expect(transaction).to be_valid }
    end

    context 'when Transaction has invalid attributes' do
      let(:transaction) { described_class.new(amount: nil, date: Date.today, transaction_type: nil, description: nil) }
      it { expect(transaction).not_to be_valid }
    end
  end
end
