module PaymentEngine
  class PaymentFacade
    def find_and_enrich_payment(payment_id)
      payment = PaymentEngine::PaymentRepository.new.find_by_id(payment_id)
      raise "Payment not found" unless payment

      enrich_payment(payment)
    end

    def find_and_enrich_all_payments
      payments = PaymentEngine::PaymentRepository.new.all
      raise "Payment not found" unless payments

      payments.map { |payment| enrich_payment(payment) }
    end

    private

    def enrich_payment(payment)
      PaymentService.new.enrich_payment(payment)
    end
  end
end
