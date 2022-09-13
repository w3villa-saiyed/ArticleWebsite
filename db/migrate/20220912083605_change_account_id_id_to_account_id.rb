class ChangeAccountIdIdToAccountId < ActiveRecord::Migration[7.0]
  def change
    rename_column :likes, :account_id_id, :account_id
  end
end
