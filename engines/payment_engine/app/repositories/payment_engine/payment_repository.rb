module PaymentEngine
  class PaymentRepository
    def create(payment_params)
      Payment.create(payment_params)
    end

    def find_by_customer_id(customer_id)
      Payment.where(customer_id: customer_id)
    end

    def find_by_id(payment_id)
      Payment.find(payment_id)
    end
  end
end
