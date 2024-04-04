class Photographer < ApplicationRecord
    before_create :set_uuid
    validates :email, presence: true, uniqueness: true

    def set_uuid
        self.id = SecureRandom.uuid
    end
end