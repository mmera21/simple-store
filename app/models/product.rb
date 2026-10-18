class Product < ApplicationRecord
    # A belongs_to association sets up a relationship with another model, such that each instance of the
    # declaring model "belongs to" one instance of the other model.
    belong_to :category

    validates :title, :price, :stock_quantity, presence: true
end
