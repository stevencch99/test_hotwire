class Room < ApplicationRecord
  has_many :messages, dependent: :destroy
  scope :desc_order, -> { order(id: :desc) }
  broadcasts
end
