class Product < ApplicationRecord
  include PgSearch::Model
  
  ORDER_BY = {
    recent: "created_at DESC",
    oldest: "created_at ASC",
    expensive: "price DESC",
    cheap: "price ASC"
  }

  pg_search_scope :search_full_text, against: {
    title: 'A',
    description: 'B'
  }
  
  has_one_attached :photo
  
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true

  belongs_to :category
end
