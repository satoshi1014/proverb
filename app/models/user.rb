class User < ApplicationRecord
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :username, presence: true
  # validates :image, presence: true
  has_many :words, dependent: :destroy
  has_many  :comments
end
