class AddAccountIdToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :account_id, :integer
  end
end
