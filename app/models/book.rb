class Book < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :published_year, presence: true
  validates :published_year,
            numericality: { only_integer: true, greater_than: 0 },
            allow_nil: true
end
