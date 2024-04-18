module CustomerEngine
  class CustomerFacade
    def find_by_id(customer_id)
      CustomerRepository.new.find_by_id(customer_id)
    end
  end
end
