class PaymentFacade
  def create(payment_params)
    PaymentRepository.create(payment_params)
  end

  def find_by_id(payment_id)
    PaymentRepository.find_by_id(payment_id)
  end
end
