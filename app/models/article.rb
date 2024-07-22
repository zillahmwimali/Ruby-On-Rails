class Article < ApplicationRecord

    validates :title, presence: true, length: { maximum: 30 }
    validates :body, presence: true, length: { minimum: 10 }
    has_one_attached :image
    has_many :comments, dependent: :destroy


  end
  