class Message < ApplicationRecord
  belongs_to :room
  scope :desc_order, -> { order(created_at: :desc)  }

  broadcasts_to :room, inserts_by: :prepend
  # replace below 3 callbacks with broadcasts_to, a full menu of basic lifecycle updates
  # after_create_commit -> { broadcast_prepend_to room }
  # after_destroy_commit -> { broadcast_remove_to room }
  # after_update_commit -> { broadcast_replace_to room }
end
