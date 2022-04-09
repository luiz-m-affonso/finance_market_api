module Finances
  module Bank
    class Customer
      attr_reader :email

      def initialize(email:, first_name:, last_name:, address:, city:, state:, zip:, phone:)
        @email = email
        @first_name = first_name
        @last_name = last_name
        @address = address
        @city = city
        @state = state
        @zip = zip
        @phone = phone
      end

      def to_hash
        {
          email: @email,
          first_name: @first_name,
          last_name: @last_name,
          address: @address,
          city: @city,
          state: @state,
          zip: @zip,
          phone: @phone
        }
      end
    end
  end
end