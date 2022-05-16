  module Finances
    module Bank
      module Domain
        class Account
          attr_reader :id, :customer_id, :balance, :account_type
          def initialize(id:, customer_id:, balance:, account_type:)
            @id = id
            @customer_id = customer_id
            @balance = balance
            @account_type = account_type
          end

          def to_hash
            {
              id: @id,
              customer_id: @customer_id,
              balance: @balance,
              account_type: @account_type
            }
          end
        end
      end
    end
  end