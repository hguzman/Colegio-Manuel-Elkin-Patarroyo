class Nota < ApplicationRecord
  belongs_to :user
  
  validates :logro, :nota, presence: true
  validates :nota, format: { with: /\A\d+(?:\.\d{1})?\z/ }, numericality: { greater_than: 0, less_than: 5.1 }
end
