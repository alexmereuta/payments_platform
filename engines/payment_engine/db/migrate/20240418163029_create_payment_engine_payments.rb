class CreatePaymentEnginePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_engine_payments do |t|
      t.decimal :amount
      t.string :currency
      t.integer :customer_id
      t.string :uuid

      t.timestamps
    end
  end
end
