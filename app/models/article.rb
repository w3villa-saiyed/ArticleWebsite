class Article < ApplicationRecord
	belongs_to :account
	belongs_to :category
	has_many :comments
	has_one_attached :avatar
	validates :account_id, presence: true
	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
	has_rich_text :body
end
