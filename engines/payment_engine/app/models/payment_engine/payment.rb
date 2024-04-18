module PaymentEngine
  class Payment < ApplicationRecord
    before_validation :generate_uuid

    validates :amount, presence: true, numericality: { greater_than: 0 }
    validates :currency, presence: true, inclusion: { in: %w(USD EUR CAD) }
    validates :uuid, presence: true, uniqueness: true

    private

    def generate_uuid
      self.uuid ||= SecureRandom.uuid
    end
  end
end
