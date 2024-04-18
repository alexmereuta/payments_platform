class CustomerService
  def initialize(customer_repository)
    @customer_repository = customer_repository
  end

  def create_customer(customer_params)
    @customer_repository.create(customer_params)
  end
end
