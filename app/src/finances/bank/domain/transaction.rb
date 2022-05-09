module Finances
  module Bank
    module Domain
      class Transaction
        attr_reader :id, :customer_id, :account_id, :amount, :type, :description, :date
        def initialize(id:, customer_id:, account_id:, amount:, type:, description:, date:)
          @id = id
          @customer_id = customer_id
          @account_id = account_id
          @amount = amount
          @type = type
          @description = description
          @date = date
        end

        def to_hash
          {
            id: @id,
            customer_id: @customer_id,
            account_id: @account_id,
            amount: @amount,
            type: @type,
            description: @description,
            date: @date
          }
        end
      end
    end
  end
end