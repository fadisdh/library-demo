class Book < ActiveRecord::Base
  has_many :publications
  has_many :checkouts
  has_many :authors, through: :publications

  has_attached_file :cover, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/

  validates :title, :presence => true
end
