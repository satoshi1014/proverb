class Word < ApplicationRecord
  belongs_to :user
  validates :proverb, presence: true
  validates :owner, presence: true
end
