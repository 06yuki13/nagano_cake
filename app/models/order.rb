class Order < ApplicationRecord
  enum method_of_payment: { credit_card: 0, transfer: 1 }

  belongs_to :customer
  has_many :order_products
end
