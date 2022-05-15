require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:customer) { Customer.new(
      email: 'luiz.m.affonso01@gmail.com',
      first_name: 'Affonso',
      last_name: 'Luiz',
      address: 'Worldwide',
      city: 'RJ',
      state: 'SP',
      zip: '20121252',
      phone: '21983001065'
    )
  }

  describe 'relations and validations' do
    it { expect(customer).to have_many(:accounts) }
    it { expect(customer).to have_many(:transactions)}
    it { expect(customer).to validate_presence_of(:email) }
    it { expect(customer).to validate_presence_of(:first_name) }
    it { expect(customer).to validate_presence_of(:last_name) }
    it { expect(customer).to validate_presence_of(:phone)}
    it { expect(customer).to validate_presence_of(:city) }
    it { expect(customer).to validate_presence_of(:state) }
    it { expect(customer).to validate_presence_of(:zip) }
  end

  context 'when Customer has valid attributes' do
    it { expect(customer).to be_valid }
  end

  context 'when Customer had invalid attributes' do
    let(:customer) { described_class.new(
      email: nil,
      first_name: nil,
      last_name: nil,
      address: 'Worldwide',
      city: '',
      state: '',
      zip: '',
      phone: ''
      )
    }

    it { expect(customer).not_to be_valid }
  end
end
