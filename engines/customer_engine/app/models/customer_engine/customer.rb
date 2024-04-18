module CustomerEngine
  class Customer < ApplicationRecord
    before_validation :generate_uuid

    validates :name, presence: true
    validates :date_of_birth, presence: true
    validates :place_of_birth, presence: true
    validates :uuid, presence: true, uniqueness: true

    private

    def generate_uuid
      self.uuid ||= SecureRandom.uuid
    end
  end
end
