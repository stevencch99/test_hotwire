class Message < ApplicationRecord
  belongs_to :room
  scope :desc_order, -> { order(created_at: :desc)  }
  after_create_commit -> { broadcast_append_to room }
end
