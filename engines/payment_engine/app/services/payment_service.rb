class PaymentService
  def enrich_payment(payment)
    customer = CustomerEngine::CustomerFacade.new.find_by_id(payment.customer_id)

    enriched_data = {
      customer_name: customer.name,
      date_of_birth: customer.date_of_birth,
      place_of_birth: customer.place_of_birth,
      amount: payment.amount,
      currency: payment.currency,
      timestamp: payment.created_at
    }

    enriched_data
  end
end
