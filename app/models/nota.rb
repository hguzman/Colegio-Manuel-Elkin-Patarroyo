class Nota < ApplicationRecord
<<<<<<< HEAD
  belongs_to :materia, optional: true
=======
  belongs_to :materia

  validates :logro, :nota, presence: true
  validates :nota, format: { with: /\A\d+(?:\.\d{1})?\z/ }, numericality: { greater_than: 0, less_than: 5.1 }
>>>>>>> 6ec8bc69651d4332db7df1197b098246e9167d48
end
