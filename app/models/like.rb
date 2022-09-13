class Like < ApplicationRecord
  belongs_to :account
  belongs_to :article
  validates :account_id, uniqueness: {scope: :article_id}
end
