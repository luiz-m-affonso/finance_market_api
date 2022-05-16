module Finances
  module Bank
    module Domain
      describe Transaction do
        let(:subject) {
           described_class.new(
              id: 1,
              customer_id: customer.id,
              account_id: account.id,
              amount: 1000,
              type: 'Payment',
              description: 'Payment',
              date: Time.zone.now
           )
          }

        let(:account) {
          Account.new(
            id: 1,
            customer_id: customer.id,
            balance: 1000,
            account_type: 'Payment'
            )
          }

        let(:customer) {
          Customer.new(
            id: 1,
            email: 'affonso@gmail.com',
            first_name: 'Luiz',
            last_name: 'Affonso',
            address: 'World',
            city: 'Anywhere',
            state: 'Anywhere',
            zip: '20200-000',
            phone: '1111-1111'
          )
        }

        describe '#initialize' do
          context 'should initialize a transaction' do
            it { is_expected.to respond_to(:customer_id) }
            it { is_expected.to respond_to(:account_id) }
            it { is_expected.to respond_to(:amount) }
            it { is_expected.to respond_to(:type) }
            it { is_expected.to respond_to(:description) }
            it { is_expected.to respond_to(:date) }
          end
        end
      end
    end
  end
end