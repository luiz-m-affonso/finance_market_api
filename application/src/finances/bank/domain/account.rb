module Finances
  module Bank
    class Account
      attr_reader :id, :customer_id, :balance
      def initialize(id:, customer_id:, balance:)
        @id = id
        @customer_id = customer_id
        @balance = balance
      end

      def to_hash
        {
          id: @id,
          customer_id: @customer_id,
          balance: @balance
        }
      end
    end
  end
end