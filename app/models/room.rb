class Room < ApplicationRecord
  has_many :messages
  scope :desc_order, -> { order(id: :desc) }
end
