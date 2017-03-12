class Todo < ApplicationRecord
  scope :complete, ->{ where.not(completed_at: nil) }
  scope :incomplete, ->{ where(completed_at: nil) }
end
