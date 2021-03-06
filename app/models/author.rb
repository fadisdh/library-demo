class Author < ActiveRecord::Base
  has_many :publications
  has_many :books, through: :publications

  def name
    "#{first_name} #{last_name}"
  end

  validates :first_name, :last_name, :presence => true
end