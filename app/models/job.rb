class Job < ApplicationRecord
    validates :position, length: { minimum: 4 }
    validates :company, length: { minimum: 4 }
    validates :place, length: { minimum: 4 }

end
