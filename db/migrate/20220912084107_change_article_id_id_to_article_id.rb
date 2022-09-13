class ChangeArticleIdIdToArticleId < ActiveRecord::Migration[7.0]
  def change
    rename_column :likes, :article_id_id, :article_id
  end
end
