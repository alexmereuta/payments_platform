class CustomerRepository
  def find_by_id(customer_id)
    CustomerEngine::Customer.find_by_id(customer_id)
  end
end
