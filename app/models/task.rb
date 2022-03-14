class Task < ApplicationRecord
    enum state: {
        initial: 0,
        started: 1,
        done: 2
    }

    default_scope { where(deleted_at: nil) }

    # scope :active, -> { unscope(where: :deleted_at).where(deleted_at: nil) }
    scope :deleted, -> { unscope(where: :deleted_at).where.not(deleted_at: nil) }
    scope :due_today, -> { unscope(where: :deleted_at).where(due_at: Time.now) }
end
