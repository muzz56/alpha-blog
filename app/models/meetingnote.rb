class Meetingnote < ApplicationRecord
    validates :description, presence: true
end