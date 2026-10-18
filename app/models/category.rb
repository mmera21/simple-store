class Category < ApplicationRecord
    # guide ruby in rails, 2.3. Has_many
    has_many :products

    validates :name, presence: true, uniqueness: true

end
