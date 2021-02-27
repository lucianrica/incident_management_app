class Reply < ApplicationRecord
    belongs_to :incident
    belongs_to :user
    validates :reply, presence: true
end
