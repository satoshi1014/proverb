class Word < ApplicationRecord
  validates :proverb, presence: true
  validates :owner, presence: true
end
