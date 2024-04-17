class CustomerRepository
  def find_by_id(customer_id)
    Customer.find(customer_id)
  end
end
