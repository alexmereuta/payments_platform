class CustomerFacade
  # def initialize(customer_repository)
  #   @customer_repository = customer_repository
  # end

  # def find_by_id(customer_id)
  #   customer = CustomerRepository.find_by_id(customer_id)

  #   @customer_repository.find_by_id(customer_id)
  # end

  def find_by_id(customer_id)
    CustomerRepository.find_by_id(customer_id)
  end
end
