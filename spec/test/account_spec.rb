module Finances
  module Bank
    module Domain
      describe Account do
        let(:subject) { described_class.new(id: 1, customer: customer.id, balance: 1000, account_type: 'Payment') }
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
          it 'should initialize an account' do
            it { is_expected.to respond_to(:customer) }
            it { is_expected.to respond_to(:balance) }
            it { is_expected.to respond_to(:account_type) }
          end
        end
      end
    end
  end
end