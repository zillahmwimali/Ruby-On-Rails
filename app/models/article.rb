class Article < ApplicationRecord
  include Visible

    validates :title, presence: true, length: { maximum: 30 }
    validates :body, presence: true, length: { minimum: 10 }
    has_many :comments, dependent: :destroy
    has_one_attached :image


  end
  