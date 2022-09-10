class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :account
end
