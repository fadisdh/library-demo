class Checkout < ActiveRecord::Base
  belongs_to :book

  validates :name, presence: true
  validates :checkout_date, :return_date, presence: true
end
