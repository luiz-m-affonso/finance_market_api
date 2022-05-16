module Finances
  module Bank
    module Domain
      describe Customer do
        let(:subject) {
          described_class.new(
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
          it { is_expected.to respond_to(:email) }
          it { is_expected.to respond_to(:first_name) }
          it { is_expected.to respond_to(:last_name) }
          it { is_expected.to respond_to(:address) }
          it { is_expected.to respond_to(:city) }
          it { is_expected.to respond_to(:state) }
          it { is_expected.to respond_to(:zip) }
          it { is_expected.to respond_to(:phone) }
        end

        describe '#to_hash' do
          let(:customer_hash) do {
              email: 'affonso@gmail.com',
              first_name: 'Luiz',
              last_name: 'Affonso',
              address: 'World',
              city: 'Anywhere',
              state: 'Anywhere',
              zip: '20200-000',
              phone: '1111-1111'
            }
          end

          it 'returns a hash with the customer data' do
            expect(subject.to_hash).to eq(customer_hash)
          end
        end
      end
    end
  end
end