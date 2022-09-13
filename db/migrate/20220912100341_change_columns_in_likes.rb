class ChangeColumnsInLikes < ActiveRecord::Migration[7.0]
  def change
    rename_column :likes, :accounts_id, :account_id
    rename_column :likes, :articles_id, :article_id
  end
end
