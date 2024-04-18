class PaymentFacade
  def find_and_enrich_payment(payment_id, customer_facade)
    payment = PaymentRepository.find_by_id(payment_id)
    raise "Payment not found" unless payment

    enriched_data = PaymentService.new.enrich_payment(payment, customer_facade)

    enriched_data
  end
end
