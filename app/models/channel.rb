class Channel < ApplicationRecord
    has_many :incidents
    has_many :users, through: :incidents
    resourcify
end
