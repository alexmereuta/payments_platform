module PaymentEngine
  class PaymentRepository
    def find_by_id(payment_id)
      Payment.find(payment_id)
    end

    def all
      Payment.all
    end
  end
end
