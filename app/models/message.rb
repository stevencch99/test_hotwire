class Message < ApplicationRecord
  belongs_to :room
  scope :desc_order, -> { order(created_at: :desc)  }
  after_create_commit -> { broadcast_append_to room }

  # FIXME: this line does not work
  after_destroy_commit -> { broadcast_remove_to room }
end
