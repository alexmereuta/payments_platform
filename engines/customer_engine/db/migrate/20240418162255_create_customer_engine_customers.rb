class CreateCustomerEngineCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_engine_customers do |t|
      t.string :name
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :uuid

      t.timestamps
    end
  end
end
