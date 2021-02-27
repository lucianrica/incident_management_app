class Incident < ApplicationRecord
    # belongs to a channel and a user
    belongs_to :channel
    belongs_to :user

    # if an incident is deleted destroy the replies
    has_many :replies, dependent: :destroy 

    # cannot post incident without these fields
    validates :title, :content, presence: true
    resourcify
end
