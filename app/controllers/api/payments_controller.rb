module Api
  class PaymentsController < ApplicationController
    def index
      payment_facade = PaymentEngine::PaymentFacade.new
      payments = payment_facade.find_and_enrich_all_payments

      if payments.empty?
        render json: { error: "No payments found" }, status: :not_found
      else
        render json: payments, status: :ok
      end
    end

    def show
      payment_facade = PaymentEngine::PaymentFacade.new
      payment = payment_facade.find_and_enrich_payment(params[:id])

      if payment.nil?
        render json: { error: "Payment not found" }, status: :not_found
      else
        render json: payment, status: :ok
      end
    end
  end
end
