require 'rails_helper'

RSpec.describe Customer, type: :model do
  let(:subject) { described_class.new(
      email: 'luiz.m.affonso01@gmail.com',
      first_name: 'Affonso',
      last_name: 'Luiz',
      address: 'Worldwide',
      city: 'RJ',
      state: 'SP',
      country: 'Brazil',
      zip: '20121252',
      phone: '21983001065'
    )
  }

  describe 'relations and validations' do
    it { is_expected.to have_many(:accounts) }
    it { is_expected.to have_many(:transactions).through(:accounts) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence(:last_name) }
    it { is_expected.to validate_presence_of(:phone)}
    it { is_expected.to validate_presence(:address) }
    it { is_expected.to validate_presence(:city) }
    it { is_expected.to validate_presence(:state) }
    it { is_expected.to validate_presence_(:country) }
    it { is_expected.to validate_presence_of(:zip) }
  end

  context 'when Customer has valid attributes' do
    it { is_expected.to be_valid }
  end

  context 'when Customer had invalid attributes' do
    let(:customer) { described_class.new(
      email: nil,
      first_name: nil,
      last_name: nil,
      address: 'Worldwide',
      city: '',
      state: '',
      country: 'Brazil',
      zip: '',
      phone: ''
      )
    }

    it { is_expected.not_to be_valid }
  end
end
