class Floof < ApplicationRecord
  validates :name, presence: true
  validates :floofiness, numericality: true, inclusion: { in: 1..5 }

  has_many :posts
end
